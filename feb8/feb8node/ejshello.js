const express=require("express");
const res = require("express/lib/response");

const app=express();

app.set('view engine','ejs');
app.get("/ejsdemo",(req,res)=>{

    let arr1={
        fname:["yax","akib"],
        lname:["patel","dabgar"]
    }
    let arr2={
        fname:["deep","jay"],
        lname:["patel","bosamiya"]
    }
}

res.render("ejsrender",{user:arr1,fname:arr2});

});
app.listen(8080);