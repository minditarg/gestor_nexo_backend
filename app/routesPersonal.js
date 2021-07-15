var general = require('./functionsGeneral');
var bodyParser = require('body-parser');
var bcrypt = require('bcrypt-nodejs');
var mkdirp = require('mkdirp');
var path = require('path');
var bodyUrlencoded = bodyParser.urlencoded({
 	extended: true
});
var bodyJson = bodyParser.json();
var bcrypt = require('bcrypt-nodejs');


module.exports = function (app,connection, passport) {

    function checkConnection(req, res, next) {
		console.log(connection.state);
		//connection = mysql.createConnection(dbconfig.connection);
		next();
	}

	function isLoggedIn(req, res, next) {
		// if user is authenticated in the session, carry on
		if (req.isAuthenticated())
			return next();
		// if they aren't redirect them to the home page
		res.json({ success: 3, error_msj: "no esta autenticado" });
	}

    
    /********************************* */
    /*TIPOS DE FALTAS*/
    /********************************* */

    app.get('/list-tiposfaltas', isLoggedIn, checkConnection, function (req, res) {
        connection.query("SELECT * FROM tipos_faltas WHERE estado = 1", function (err, result) {
            if (err) return res.json({ success: 0, error_msj: err });
            res.json({ success: 1, result });
        });
    });

    app.post('/insert-tiposfaltas', bodyJson, checkConnection, (req, res, next) => { general.checkPermission(req, res, next, [92], connection) }, function (req, res) {
		var arrayIns = [req.body.descripcion, req.body.cantidad_dias, 1];
		connection.query("CALL tiposfaltas_insertar(?)",  [arrayIns], function (err, result) {
			if (err) return res.json({ success: 0, error_msj: err.message, err });
			res.json({ success: 1, result });
		})
	});

    app.post('/delete-tipofalta', bodyJson, checkConnection, function (req, res) {
		if (req.body.id) {
			var id = parseInt(req.body.id);
			var objectoUpdate = { estado: 0 };
			connection.query("UPDATE tipos_faltas SET ? where id = ?", [objectoUpdate, id], function (err, result) {
				if (err) return res.json({ success: 0, error_msj: "ha ocurrido un error al intentar actualizar la tabla tipos de faltas", err });
				res.json({ success: 1, result });
			});

		} else {
			res.json({ success: 0, error_msj: "el id de la tabla tipos de faltas no esta ingresado" })

		}
	});

    app.get('/list-tiposfaltas/:id', checkConnection, function (req, res) {
		var id = req.params.id;
		connection.query("SELECT * FROM tipos_faltas WHERE id = ? AND estado > 0", [id], function (err, result) {
			if (err) return res.json({ success: 0, error_msj: err });
			res.json({ success: 1, result });
		});
	});

	app.post('/update-tipofalta', bodyJson, checkConnection, (req, res, next) => { general.checkPermission(req, res, next, [92], connection) }, function (req, res) {
		if (req.body.id) {
			let id = req.body.id || null;
			let descripcion = req.body.descripcion || null;
            let cantidad_dias = req.body.cantidad_dias || null;

			let arrayIns = [id, descripcion, cantidad_dias];
			connection.query("CALL tiposfaltas_update(?)",  [arrayIns], function (err, result) {
				if (err) return res.json({ success: 0, error_msj: err.message, err });
				res.json({ success: 1, result });
			})
		} else {
			res.json({ success: 0, error_msj: "el id de la tabla de tipos de faltas no esta ingresado" })

		}
	});

    /********************************* */
    /*EMPLEADOS*/
    /********************************* */

    app.get('/list-empleados', isLoggedIn, checkConnection, function (req, res) {
        connection.query("SELECT e.*, te.descripcion as 'tipoempleado' FROM empleados e INNER JOIN tipos_empleados te ON e.id_tipo_empleado = te.id WHERE e.estado = 1", function (err, result) {
            if (err) return res.json({ success: 0, error_msj: err });
            res.json({ success: 1, result });
        });
    });

    app.post('/insert-empleados', bodyJson, checkConnection, (req, res, next) => { general.checkPermission(req, res, next, [91], connection) }, function (req, res) {
		let id_tipo_empleado = req.body.id_tipo_empleado || null;
        var arrayIns = [req.body.nombre, req.body.apellido, req.body.dni, req.body.telefono, req.body.direccion, id_tipo_empleado, req.body.mail, 1];
		connection.query("CALL empleados_insertar(?)",  [arrayIns], function (err, result) {
			if (err) return res.json({ success: 0, error_msj: err.message, err });
			res.json({ success: 1, result });
		})
	});

    app.post('/delete-empleado', bodyJson, checkConnection, function (req, res) {
		if (req.body.id) {
			var id = parseInt(req.body.id);
			var objectoUpdate = { estado: 0 };
			connection.query("UPDATE empleados SET ? where id = ?", [objectoUpdate, id], function (err, result) {
				if (err) return res.json({ success: 0, error_msj: "ha ocurrido un error al intentar actualizar la tabla de empleados", err });
				res.json({ success: 1, result });
			});

		} else {
			res.json({ success: 0, error_msj: "el id de la tabla empleados no esta ingresado" })

		}
	});

    app.get('/list-empleados/:id', checkConnection, function (req, res) {
		var id = req.params.id;
		connection.query("SELECT * FROM empleados WHERE id = ? AND estado > 0", [id], function (err, result) {
			if (err) return res.json({ success: 0, error_msj: err });
			res.json({ success: 1, result });
		});
	});

	app.post('/update-empleado', bodyJson, checkConnection, (req, res, next) => { general.checkPermission(req, res, next, [91], connection) }, function (req, res) {
		if (req.body.id) {
			let id = req.body.id || null;
			let nombre = req.body.nombre || null;
            let apellido = req.body.apellido || null;
            let dni = req.body.dni || null;
            let telefono = req.body.telefono || null;
            let direccion = req.body.direccion || null;
            let id_tipo_empleado = req.body.id_tipo_empleado || null;
            let mail = req.body.mail || null;

			let arrayIns = [id, nombre, apellido, dni, telefono, direccion, id_tipo_empleado, mail];
			connection.query("CALL empleados_update(?)",  [arrayIns], function (err, result) {
				if (err) return res.json({ success: 0, error_msj: err.message, err });
				res.json({ success: 1, result });
			})
		} else {
			res.json({ success: 0, error_msj: "el id de la tabla de empleados no esta ingresado" })

		}
	});

    app.get('/list-tipo-empleado', checkConnection, function (req, res) {

		connection.query("SELECT * FROM tipos_empleados WHERE estado = 1", function (err, result) {
			if (err) {
				return res.json({ success: 0, error_msj: err });
			}
			else {

				res.json({ success: 1, result });
			}
		})
	});

}