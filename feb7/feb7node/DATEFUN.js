// const { start } = require("repl");

// function days(){
//     prompt.start();
//     let input=prompt();
//     let akib_date=new Date();
//     console.log(akib_date.getDay());
// }

// days();

var prompt= require('prompt');
let day;
prompt.start();
prompt.get(['Date'],function(err,data){

    let akib_day=new Date(data.Date)

    switch (new Date().getDay()) {
        case 0:
          day = "Sunday";
          break;
        case 1:
          day = "Monday";
          break;
        case 2:
           day = "Tuesday";
          break;
        case 3:
          day = "Wednesday";
          break;
        case 4:
          day = "Thursday";
          break;
        case 5:
          day = "Friday";
          break;
        case 6:
          day = "Saturday";
      }
      console.log(day);

      const moment = require('moment');
  
var bool1 = moment([akib_day.getYear()]).isLeapYear() // true
console.log(" check leap year->"+bool1);
});

