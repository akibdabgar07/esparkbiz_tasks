const express=require('express')
const app=express()

app.get('/akib',function(req,res){
    res.send("hi how are you");
})
app.listen(8080);