const express = require("express");
const app = express();
app.use(express.json());
const mysql = require("mysql2");
const port = 9090;

let dlr = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "root",
    database: "student",
});

let limit = 100;
let offset;
let count_1;
let sort_this = "asc";
let sort = "id";

app.set("view engine", "ejs");

app.get("/page", (req, res) => {
    if (req.query.sort != undefined) {
        sort = req.query.sort;
        sort_this = req.query.sort_this;
        console.log("so0rt_this ,", sort_this);
    }

    let page = req.query.no || 1;

    offset = (page - 1) * limit;

    dlr.query(
        `SELECT count(*) AS COUNT FROM student.student_express ;`,
        (err, count) => {
            if (err) throw err;
            console.log(count);
            count_1 = count[0].COUNT / limit;

        }
    );
    let query = `SELECT * FROM student.student_express order by ${sort} ${sort_this} limit ${offset},${limit};`;
    // let column = ['id', 'first_name', 'last_name', 'contact', 'city', 'create_time'];
    dlr.query(query, (err, data) => {
        if (err) throw err;
        console.log("dhasjdfuisgfh", data);
        res.render("sort2.ejs", { t1: data, count_1: count_1, sort_this });
    });
});

app.listen(9090, (err) => {
    console.log("http://localhost:9090/page");
});