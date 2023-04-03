var http = require('http');
http.createServer(function(req,res){
res.writeHead(200,{'Content-Type':'text/html'});

const cars = ["BMW", "Volvo", "Saab", "Ford", "Fiat", "Audi"];

let text = "";
for (let i = 0; i < cars.length; i++) {
  text += cars[i] + "<br>";
}
res.write(text);
res.end('Hello World');
}).listen(8080);