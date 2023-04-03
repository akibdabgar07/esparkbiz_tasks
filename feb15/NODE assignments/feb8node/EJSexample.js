const express = require('express');
const app = express();
const path = require('path');

// Setting EJS as templating engine

app.set('view engine', 'ejs');


app.get('/',function (req,res) {
    res.render("/home/akib-dabgar/Desktop/akib07/NODEJS/ejsdatashow.ejs");
});
app.listen(8080);