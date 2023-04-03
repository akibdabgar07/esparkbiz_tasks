
var fs = require('fs');
let capitaldata;

  fs.readFile('./job_application_form.txt','utf-8',function(err, data) {
   
  console.log(data);

  capitaldata=data;
  capitaldata=capitaldata.split(' ');
  console.log(capitaldata);

  let capitaldata2=new Array(capitaldata.length);
  for(let i=0;i<capitaldata.length;i++)
  {
      capitaldata2[i]=capitaldata[i].charAt(0).toUpperCase();
      var temp= capitaldata[i].substr(1,capitaldata[i].length)
    //   console.log(capitaldata2);

      capitaldata2[i]+=temp;
      
    }
    let data1=capitaldata2.toString();
    data1=data1.replaceAll("," ," ");
    console.log(data1);

fs.writeFile('./demo.txt', data1, err => {
  if (err) {
    console.error(err); 
  }
});

 
  });
 