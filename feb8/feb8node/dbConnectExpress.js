const express=require('express');
const mysql2=require('mysql2');
const app=express();
const bodyparser=require('body-parser');
const json=bodyparser.json({extends:false});

const mysqlconnection=mysql2.createConnection({
  host:'localhost',
  user:'root',
  password:'root',
  database:'StudentDatabase'
});
app.get('/student_detail',function(req,res){
    mysqlconnection.query(
        'SELECT * FROM `StudentDetail`',
        function(err, results, fields) {
          res.send(results); 
        }
      );
})

app.get('/add_student',function(req,res){
  let college=req.query.collegeName;
  mysqlconnection.query(
    `INSERT INTO Colleges_Name (College) VALUES ('`+college+`')`
    ,
      function(err, results, fields) {
        res.send(results); 
      }
    );
})

app.post('/add_student_post',json,function(req,res){

  let S_First_Name=req.body.S_First_Name;
  let S_Last_Name=req.body.S_Last_Name;
  let Contact=req.body.Contact;
  let Email=req.body.Email;
  let College_Id=req.body.College_Id;
  let S_City=req.body.S_City;
  //  res.send(S_First_Name+" "+Contact +" "+S_Last_Name+ " "+Email+" "+College_Id+" "+S_City);
 
  
  mysqlconnection.query(
    "INSERT INTO `StudentDetail` (`S_FirstName`, `S_LastName`, `Contact`, `Email`, `College_Id`, `S_City`) VALUES ('"+S_First_Name+"', '"+S_Last_Name+"', '"+Contact+"', '"+Email+"', '"+College_Id+"', '"+S_City+"');",function(err,results,fields){
      if(err) throw err;
      res.send(results);
      

    }
  )

})

app.listen(8080);
