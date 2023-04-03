const express = require("express");
const mysql = require("mysql2");

const app = express();
const bodyparser = require('body-parser');
app.use(bodyparser.json());
app.use(bodyparser.urlencoded({ extended: true }));

const sqlconnect = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'root',
    database: 'combo_db'
});
app.set('views engine', 'ejs');


function queryDb(query) {
    return new Promise((resolve, reject) => {
        sqlconnect.query(query, (err, result) => {
            if (err) {
                return reject(err);
            }
            resolve(result);
        });
    })
}

app.get('/', function (req, res) {


    async function empselect() {
        try {
            const emp_select_que = `SELECT * FROM employee_tb; `;
            const result = await queryDb(emp_select_que);




            res.render("exsheet.ejs", { result });


        }
        catch (e) {
            console.log(e);
        }
    }


    empselect();
});

app.get('/insert', function (req, res) {

    let id = req.query.id;
    let name = req.query.name;
    let email = req.query.email;
    let city = req.query.city;
    let dept = req.query.dept;
    let cont = req.query.cont;


    async function insertdata() {
        try {
            if (name != '' || name != undefined) {
                
                const empinsert = `INSERT INTO employee_tb (emp_id,emp_name,email,city,department,contact) VALUES('${id}','${name}','${email}','${city}','${dept}','${cont}')`;
                await queryDb(empinsert);
            }

        }
        catch (e) {
            console.log(e);
        }
    }

    insertdata();

    res.json({ hi: 'hi' });
});


app.get('/update', function (req, res) {


    let eid = req.query.eid;
    let id = req.query.id;
    let name = req.query.name;
    let email = req.query.email;
    let city = req.query.city;
    let dept = req.query.dept;
    let cont = req.query.cont;
    console.log(eid, id, name, email, city, dept, cont);
    // console.log(eid);
    // console.log(name);


    async function updatedata() {
        try {
            const empupdate = `update employee_tb set emp_id='${id}',emp_name='${name}', email='${email}', city='${city}', department='${dept}', contact='${cont}' where ( employee_tb_id='${eid}');`;
            await queryDb(empupdate);


        }
        catch (e) {
            console.log(e);
        }
    }

    updatedata();
    res.json({ hi: 'hi' });

});

// app.get('/allsave', function (req, res) {

//     let id = req.query.id;
//     let name = req.query.name;
//     let email = req.query.email;
//     let city = req.query.city;
//     let dept = req.query.dept;
//     let cont = req.query.cont;





//     let eid = req.query.eid;
//     let id1 = req.query.id1;
//     let name1 = req.query.name1;
//     let email1 = req.query.email1;
//     let city1 = req.query.city1;
//     let dept1 = req.query.dept1;
//     let cont1 = req.query.cont1;

//     console.log("Eid:" + eid);
//     console.log("id1:" + id1);
//     console.log("NAME1:" + name1);
//     console.log("EMAI1L:" + email1);
//     console.log("CITY1:" + city1);
//     console.log("DEPT1:" + dept1);
//     console.log("CONT1:" + cont1);



//     async function saveall() {
//         try {
//             // const saveinsert = `INSERT INTO employee_tb (emp_id,emp_name,email,city,department,contact) VALUES('${id}','${name}','${email}','${city}','${dept}','${cont}')`;
//             // await queryDb(saveinsert);


//             // const saveupdate = ` update employee_tb set  emp_id='${id1}',emp_name='${name1}', email='${email1}', city='${city1}', department='${dept1}', contact='${cont1}' where ( employee_tb_id='${eid}');`;
//             // await queryDb(saveupdate);





//         }
//         catch (e) {
//             console.log(e);
//         }
//     }

//     saveall();
//     res.end('window.location.href="http://localhost:8085/";</script>');




// });
app.listen(8086);

