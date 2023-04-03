const express = require('express');
const mysql2 = require('mysql2');
const app = express();
const port = 8081;

const mysqlconnection = mysql2.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'root',
    database: 'StudentDatabase'
});
// Setting EJS as templating engine

app.set('view engine', 'ejs');
let akib_data;

app.get('/', function (req, res) {
    let akib_i;
    akib_i = req.query.offset;
    console.log("ahahaah",akib_i);
        if (akib_i == undefined) {
            akib_i = 0;
        }

        akib_limit=req.query.limit;
        if(akib_limit==undefined)
        {
            akib_limit=100;
        }

    
    mysqlconnection.query(
        'SELECT * FROM `StudentExpress` LIMIT '+akib_limit+' OFFSET '+akib_i,
        function (err, results, fields) {
         //   res.send(results);
         akib_data=results;
        
        }
    );

    mysqlconnection.query(
        'SELECT COUNT(student_express_id) FROM `StudentExpress`',
        function (err, results1, fields) {
         //   res.send(results);
         console.log(results1);
            res.render("retrievedatapagination.ejs",{data : akib_data, results1,port,limit:akib_limit, akib_i});
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
app.listen(port);

//{"student_express_id":1,"fname":"Paige","lname":"Fuller","contact":"636264628","email":"PaigeFuller@gmail.com","city":"Frostdale","college_id":2,"created_date":"2023-02-08T01:05:17.000Z"},