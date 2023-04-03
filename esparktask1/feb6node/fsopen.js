var fs=require('fs');
fs.open('./job_application_form.html','r',function(err,file){
    if(err) throw err;
    console.log('saved');
});