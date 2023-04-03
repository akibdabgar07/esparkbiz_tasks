var express = require('express');
var app = express();
var mysql = require('mysql2');
app.set('view engine', 'ejs');
var port = 8083;
var con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "root",
    database: "Student_db",
    port: 3306
});

var data;
con.connect(function (err) {
    if (err) throw err;
    console.log("Connected!");

    app.get("/", function (req, res) {
    
        var page = req.query.page;
        if (page == undefined) {
            page = 1;
        }
        var limit = 100;
        var offset = (page - 1) * limit;
        //Insert a record in the "customers" table:
        con.query("SELECT * FROM student_express order by s_id LIMIT " + offset + "," + limit + "", function (err, result) {
            if (err) throw err;
            else {
                for (x in result) {  
                    console.log(result[x]);
                } 
            }
           data=result;
           res.render("page",{ data});
        });
        
        console.log(req.url);
      
   
    });
    app.listen(8083, function (req, res) {
        console.log(`Example app listening at `, port);
    });
});