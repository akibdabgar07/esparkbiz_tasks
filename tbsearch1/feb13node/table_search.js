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
    
    console.log(searching);
    if (searching== undefined) {

        sqlconnect.query("select * from StudentExpress ",function(err,results,fields){
        
            res.render('table_search.ejs',{data:results})
            }
        )
    }
    else{
        //let fn=searching.replace("^","");
        let fn=searching.indexOf("^");
        let ln=searching.indexOf("*");
        let em=searching.indexOf("@");
        console.log(fn);
       console.log(ln);
        let fname=searching.slice(fn+1,ln);
        let lname=searching.slice(fn+1);

       let lname1=searching.slice(ln+1,fn);
        let fname1=searching.slice(fn+1);

        console.log(lname1);
        console.log(fname1);
//console.log(fname);
//console.log(lname);
       let f = searching.replace("^","");
       let l = searching.replace("*","");
       let e = searching.replace("@","");
       let c = searching.replace("&","");
       let d = searching.replace("%","");


     //   console.log(g);
    //   console.log(h);
      

       // const akib_search=searching.split(" ");
       sqlconnect.query("select * from StudentExpress where fname= '"+fname+"' and lname='"+lname+"' or lname= '"+lname1+"' and fname='"+fname1+"' or fname= '"+f+"' or lname='"+l+"' or email='"+e+"'  or city='"+c+"'  or created_date='"+d+"' " ,function(err,results,fields){
        
        res.render('table_search.ejs',{data:results})
        }
    )
           
       }
    
});


app.listen(8082);

