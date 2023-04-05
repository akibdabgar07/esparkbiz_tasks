const express = require("express");
const app = express();
app.use(express.json());
const mysql = require("mysql2");
const port = 10000;

let dlr = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "root",
    database: "student",
});
let sort = "id";
let limit = 100;
let offset;
let count_1;

app.set("view engine", "ejs");

app.get("/view", (req, res) => {

    if (req.query.sort != undefined) {
        sort = req.query.sort;
    }
    let page = req.query.no;
    offset = (page - 1) * limit;


    dlr.query(
        `SELECT * from  student.student_express order by ${sort} asc limit ${offset},${limit} ;`,
        (err, count) => {
            if (err) throw err;

            count_1 = count[0].COUNT / limit;
            console.log(count_1);

        }
    );
    let query = `SELECT * FROM student.student_express order by ${sort} asc limit ${offset},${limit};`;
    // let column = ['id', 'first_name', 'last_name', 'contact', 'city', 'create_time'];

    dlr.query(query, (err, data1) => {
        if (err) throw err;

        res.render("short.ejs", { t1: data1, count_1, sort, page });
    });
});

app.listen(port, () => {
    console.log(`http://localhost:${port}/view`);
});