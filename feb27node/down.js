const express = require("express");
const mysql = require("mysql2");
const app =  express();

app.set('view engine','ejs')

app.get('/', function (req, res) {
   res.render('down');
});


app.listen(8085);


