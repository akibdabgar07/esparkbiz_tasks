var http=require('http');
var dt=require('./new_module_create');
http.createServer(function(req,res){
    res.writeHead(200,{'Content-Type':'text/html'});
    res.write("The date and time are current:"+ dt.myDateTime());
    res.end();


}).listen(8080);