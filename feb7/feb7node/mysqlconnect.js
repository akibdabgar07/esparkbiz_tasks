var mysql=require('mysql2');

var connection=mysql.createConnection({
    host:'localhost',
    user:'root',
    password:'root',
    database:'StudentDatabase'
});

connection.query(
    'SELECT * FROM `StudentDetail` WHERE `S_FirstName` = "Akib" AND `S_City` ="Lake Lakendraton"',
    function(err, results, fields) {
      console.log(results); 
    }
  );