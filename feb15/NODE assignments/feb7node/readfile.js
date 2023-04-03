// var http = require('http');
// var fs = require('fs');
// http.createServer(function (req, res) {
//   fs.readFile('./job_application_form.html', function(err, data) {
//     res.writeHead(200, {'Content-Type': 'text/html'});
//     res.write(data);
//     return res.end();
//   });
// }).listen(8080,()=>{
//     console.log("Done");
// });


// const fs = require('fs/promises');

// async function example() {
//   try {
//     const data = await fs.readFile('./job_application_form.txt', { encoding: 'utf8' });
//     console.log(data);
//   } catch (err) {
//     console.log(err);
//   }
// }
// example();

// Node.js program to demonstrate the
// fs.open() Method

// Include the fs module
var fs = require('fs');

// Open file demo.txt in read mode
fs.open('./job_application_form.txt', 'r', function (err, f) {
console.log(f);
});
