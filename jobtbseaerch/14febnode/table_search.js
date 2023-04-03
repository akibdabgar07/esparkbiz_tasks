const express= require("express");
const mysql=require("mysql2");

const app=express();

const sqlconnect=mysql.createConnection({
    host:'localhost',
    user:'root',
    password:'root',
    database:'StudentDatabase'
});
app.set('views engine','ejs');


app.get('/',function(req,res){
    let searching=req.query.searching;

    if (searching == undefined || searching == "") {

        sqlconnect.query("select * from StudentExpress ",function(err,results,fields){
        
            res.render('table_search.ejs',{data:results})
            })
    }
   else{
    let str1;
    str1 = searching.replaceAll("^","' AND fname = '");
    str1 = str1.replaceAll("*","' AND lname = '");
     str1 = str1.replaceAll("$","' AND contact = '");
     str1 = str1.replaceAll("!","' AND email = '");
     str1 = str1.replaceAll("+","' AND city = '");
     str1 = str1.replaceAll("#","' AND college_id = '");
     
    console.log(str1);
    str2 = str1.slice(6,str1.length);
    str2 = str2.concat("'");
    console.log(str2);


    let str3;
    str4 = searching.replaceAll("^","' or fname = '");
    str4 = str4.replaceAll("*","' or lname = '");
     str4 = str4.replaceAll("$","' or contact = '");
     str4 = str4.replaceAll("!","' or email = '");
     str4 = str4.replaceAll("+","' or city = '");
     str4 = str4.replaceAll("#","' or college_id = '");
     
    console.log(str4);
    str5 = str4.slice(6,str4.length);
    str5 = str5.concat("'");
    console.log(str5);

    sqlconnect.query("select * from StudentExpress where  "+ str2 + str5 ,function(err,results,fields){
        
        res.render('table_search.ejs',{data:results})
        }
    )
   }
});

app.listen(8002);