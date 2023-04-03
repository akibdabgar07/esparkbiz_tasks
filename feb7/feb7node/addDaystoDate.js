// Date.prototype.addDays = function(data) {
//     var date = new Date(this.valueOf());
//     date.setDate(date.getDate() + data);
//     return date;
// }

// var date = new Date();

// var prompt= require('prompt');
// prompt.start();
// prompt.get(['add days'],function(err,days){
// console.log(date.addDays(days));
// });

Date.prototype.addDays = function(days) {
    var date = new Date(this.valueOf());
    date.setDate(date.getDate() + days);
    return date;
}

var date = new Date();

console.log(date.addDays(25));