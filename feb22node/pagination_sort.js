const express = require('express');
const mysql2 = require('mysql2');
const app = express();
const port = 8087;

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
    let sort_data="ASC";
    let  akib_reset="DESC";
    let akib_i;
    akib_i = req.query.offset;
    if (akib_i == undefined) {
        akib_i = 0;
    }

    akib_limit = req.query.limit;
    if (akib_limit == undefined) {
        akib_limit = 100;
    }
   
    akib_sort = req.query.sort;
    if (akib_sort == undefined) {
        akib_sort = "student_express_id";
        
    }
    akib_dup_sort=akib_sort;
    dsc_sort=req.query.old_sort;
    if(dsc_sort== akib_sort){

        sort_data="DESC";
       
    }
    console.log(sort_data);
    console.log(akib_reset);
    mysqlconnection.query(
        'select * from StudentExpress order by ' + akib_sort + ' '+sort_data+' limit ' + akib_limit + ' offset ' + akib_i,
        function (err, results, fields) 
        
        {
            if(sort_data==akib_reset){
                console.log('test');
                akib_sort="";
            }

            //   res.send(results);
            akib_data = results;

        }
    );

    

    mysqlconnection.query(
        'SELECT COUNT(student_express_id) FROM `StudentExpress`',
        function (err, results1, fields) {
            //   res.send(results);
            res.json({ data: akib_data, results1, port, limit: akib_limit, akib_i,akib_sort,akib_dup_sort,dsc_sort });
        }
    );
});


app.get('/search', function (req, res) {
    let sort_data="ASC";
    let  akib_reset="DESC";
    let akib_i;
    akib_i = req.query.offset;
    if (akib_i == undefined) {
        akib_i = 0;
    }

    akib_limit = req.query.limit;
    if (akib_limit == undefined) {
        akib_limit = 100;
    }
   
    akib_sort = req.query.sort;
    if (akib_sort == undefined) {
        akib_sort = "student_express_id";
        
    }
    akib_dup_sort=akib_sort;
    dsc_sort=req.query.old_sort;
    if(dsc_sort== akib_sort){

        sort_data="DESC";
       
    }
    console.log(sort_data);
    console.log(akib_reset);
    mysqlconnection.query(
        'select * from StudentExpress order by ' + akib_sort + ' '+sort_data+' limit ' + akib_limit + ' offset ' + akib_i,
        function (err, results, fields) 
        
        {
            if(sort_data==akib_reset){
                console.log('test');
                akib_sort="";
            }

            //   res.send(results);
            akib_data = results;

        }
    );

    

    mysqlconnection.query(
        'SELECT COUNT(student_express_id) FROM `StudentExpress`',
        function (err, results1, fields) {
            //   res.send(results);
            res.render("pagination_sort.ejs", { data: akib_data, results1, port, limit: akib_limit, akib_i,akib_sort,akib_dup_sort,dsc_sort });
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