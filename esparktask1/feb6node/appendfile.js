var fs=require('fs');
fs.appendFile('./job_application_form.html','Hello Content',function(err){
    if(err) throw err;
    console.log("saved!");
});