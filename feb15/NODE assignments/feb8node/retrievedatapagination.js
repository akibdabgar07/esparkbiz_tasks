const express = require('express');
const mysql2 = require('mysql2');
const app = express();

const mysqlconnection = mysql2.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'root',
    database: 'StudentDatabase'
});
// Setting EJS as templating engine

app.set('view engine', 'ejs');


app.get('/', function (req, res) {
    akib_i=req.query.offset;
    if(akib_i== undefined){
        akib_i=0;
    }
    console.log(akib_i)
    mysqlconnection.query(
        'SELECT * FROM `student_express` LIMIT 10 OFFSET '+akib_i,
        function (err, results, fields) {
         //   res.send(results);
            res.render("/home/akib-dabgar/Desktop/akib07/NODEJS/retrievedatapagination.ejs",{data: results,akib_i});
        }
    );
});

// app.get('/view/:id', function (req, res) {
//     let id = req.params.id;
//     mysqlconnection.query(
//         `SELECT * FROM student_express limit ${id},10; `,
//         function (err, results, fields) {
//             //   res.send(results);
//             res.render("/home/akib-dabgar/Desktop/akib07/NODEJS/ejslist.ejs", { data: results });
//         }
//     );
// });
app.listen(8080);

//{"student_express_id":1,"fname":"Paige","lname":"Fuller","contact":"636264628","email":"PaigeFuller@gmail.com","city":"Frostdale","college_id":2,"created_date":"2023-02-08T01:05:17.000Z"},