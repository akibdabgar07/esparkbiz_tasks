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

let data=[];
let akib_i = 0;
app.get('/', function (req, res) {
   
       
            
        
    mysqlconnection.query(
        'SELECT * FROM `student_express` LIMIT 10 OFFSET 0',
        function (err, results, fields) {
            data[0]=results;
         //   res.send(results);
           
  
        }
    );

    mysqlconnection.query(
        'SELECT * FROM `student_express` LIMIT 10 OFFSET  10',
        function (err, results1, fields) {
            data[1]=results1;
         //   res.send(results);
           

        }
    );

    mysqlconnection.query(
        'SELECT * FROM `student_express` LIMIT 10 OFFSET  20',
        function (err, results2, fields) {
            data[2]=results2;
         //   res.send(results);

        }
    );

    mysqlconnection.query(
        'SELECT * FROM `student_express` LIMIT 10 OFFSET 30',
        function (err, results3, fields) {
            data[3]=results3;
         //   res.send(results);
           
        
        }
    );

    mysqlconnection.query(
        'SELECT * FROM `student_express` LIMIT 10 OFFSET 40',
        function (err, results4, fields) {
            data[4]=results4;
         //   res.send(results);
           
     
        }
    );

    mysqlconnection.query(
        'SELECT * FROM `student_express` LIMIT 10 OFFSET 50',
        function (err, results5, fields) {
            data[5]=results5;
         //   res.send(results);
           
        }
    );

    mysqlconnection.query(
        'SELECT * FROM `student_express` LIMIT 10 OFFSET 60',
        function (err, results6, fields) {
            data[6]=results6;
         //   res.send(results);
           
      
        }
    );

    mysqlconnection.query(
        'SELECT * FROM `student_express` LIMIT 10 OFFSET 70',
        function (err, results7, fields) {
            data[7]=results7;
         //   res.send(results);
           
       
        }
    );

    mysqlconnection.query(
        'SELECT * FROM `student_express` LIMIT 10 OFFSET 80',
        function (err, results8, fields) {
            data[8]=results8;
         //   res.send(results);
           
       
        }
    );

    mysqlconnection.query(
        'SELECT * FROM `student_express` LIMIT 10 OFFSET 90',
        function (err, results9, fields) {
            data[9]=results9;
         //   res.send(results);
           
         res.render("/home/akib-dabgar/Desktop/akib07/NODEJS/10tableexpress.ejs",{data});
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
app.listen(8081);

//{"student_express_id":1,"fname":"Paige","lname":"Fuller","contact":"636264628","email":"PaigeFuller@gmail.com","city":"Frostdale","college_id":2,"created_date":"2023-02-08T01:05:17.000Z"},