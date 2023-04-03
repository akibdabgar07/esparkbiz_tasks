const express = require('express');
const mysql = require('mysql2');

const app = express();
const sqlconnection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'root',
    database: 'studentdb'
});
// let yax_i = 0;
app.set('view engine', 'ejs');
app.get('/', function (req, res) {
        yax_i = req.query.offset;
        if (yax_i == undefined) {
            yax_i = 0;
        }
        console.log(yax_i)
   
    sqlconnection.query(
        'SELECT * FROM studentMaster_express LIMIT 10 OFFSET '+yax_i, function (err, results, fields) {
            // res.send(results[0]);
            res.render('/home/yax-patel/Documents/node/06-02-2023/retrieveFromSql.ejs', { data: results,yax_i });
        })
}
    // {"idstudentMaster_express":1,"fname":"Frances","lname":"Gutmann","email":"reid.gislason@email.com","collegeId":47,"sCity":"Whiteborough","contactNo":"4174173128","created_date":"2023-02-07T07:47:35.000Z"}
)
app.listen(8080);