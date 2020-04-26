
var bodyParser = require('body-parser');
var mkdirp = require('mkdirp');
var fs = require('fs');
var path = require('path');
var bodyJson = bodyParser.json();
const imageThumbnail = require('image-thumbnail');
var bodyUrlencoded = bodyParser.urlencoded({
  extended: true
});
var multer = require('multer');
var storage = multer.diskStorage({
  destination: function (req, file, callback) {

    callback(null, './'+ process.env.UPLOAD_PATH +'/');
  },
  filename: function (req, file, callback) {
   console.log(file);
    callback(null, file.originalname);
  }
});
//var upload = multer({dest:'uploads/'});
var upload = multer({ storage: storage }).single('userPhoto');


module.exports = function (app, connection, passport) {


  app.get('/list-files/:idFile', function (req, res) {
    let idPage = parseInt(req.params.idPage);
    try {
      connection.query("CALL files_detail(?)", [[idFile]], function (err, result) {
        if (err) return res.status(500).send(err);

        res.json({ success: 1, result: result[0] });

      })
    } catch (e) {
      return res.status(500).send(e.message)
    }

  });

  app.get('/list-files', function (req, res) {

    try {
      connection.query("CALL files_list()", function (err, result) {
        if (err) return res.status(500).send(err.sqlMessage);

        res.json({ success: 1, result: result[0] });

      })
    } catch (e) {
      return res.status(500).send(e.message)
    }

  });


  app.post('/insert-file', function (req, res) {
    mkdirp.sync(path.join(__dirname, '../'+ process.env.UPLOAD_PATH +'/thumbs'));


    upload(req, res, function (err) {
      if (err) return res.status(500).send(err);

      if(req.file.mimetype.indexOf('image') > -1) {
      imageThumbnail('./'+ process.env.UPLOAD_PATH +'/' + req.file.filename ,{ percentage: 25 }
      )
        .then(thumbnail => { 
          
          fs.writeFile('./'+ process.env.UPLOAD_PATH +'/thumbs/thumb_' + req.file.filename , thumbnail,function(err) {
          })
         
        })
        .catch(err => console.error(err));
      } 

     let type_file;
     if(req.file.mimetype.indexOf('image') > -1)
        type_file =1
        else
        type_file = 2; 

      connection.query("CALL files_insert(?)", [[req.file.filename, type_file]], function (err, result) {
        if (err) return res.status(500).send(err.sqlMessage);

        res.json({ success: 1, file:req.file });

      })
      

      
    });



  });



  app.post('/delete-file', bodyJson, function (req, res) {

    try {
      connection.query("CALL files_delete(?)", [[req.body.id]], function (err, result) {
        if (err) return res.status(500).send(err.sqlMessage);


        console.log(result[0][0].nombre);
        fs.rename('./uploads/' + result[0][0].nombre,'./uploads/deleted_' + result[0][0].nombre,function(){})
        fs.rename('./uploads/thumbs/thumb_' + result[0][0].nombre,'./uploads/thumbs/deleted_thumb_' + result[0][0].nombre,function(){})


        res.json({ success: 1, result });

      })
    } catch (e) {
      return res.status(500).send(e.message)
    }

  });






  function checkConnection(req, res, next) {
    console.log(connection.state);
    //  connection = mysql.createConnection(dbconfig.connection);



    next();

  }


}
