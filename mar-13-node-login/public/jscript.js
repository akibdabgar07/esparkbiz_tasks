// const { match } = require("assert");

function matchPassword() {  
    var pw1 = document.getElementById("user_password").value;  
    var pw2 = document.getElementById("confirm_cpass").value;  
    if(pw1 != pw2)  
    {   
     document.getElementById('passchk').innerHTML="incorrect";

     
    }  else{
        document.getElementById('passchk').innerHTML="";
    }
  }  

function pass(val){
 
    var newPassword = document.getElementById('user_password').value;
    var minNumberofChars = 6;
    var maxNumberofChars = 16;
    var regularExpression  = /^[a-zA-Z0-9!@#$%^&*]{6,16}$/;
  
    if(newPassword.length < minNumberofChars || newPassword.length > maxNumberofChars){
        document.getElementById('passchk1').innerHTML="length must be 6 to 16 between ";
        return false;
    }
    else{
        document.getElementById('passchk1').innerHTML="";

    }
    if(!regularExpression.test(newPassword)) {
        document.getElementById('passchk1').innerHTML="password not proper";
        return false;
    }  console.log(data.msg);
}


async function chkmail(emafff){

    
    console.log(emafff);
    let res =await fetch('http://localhost:8081/email',{
        method:"post",
        headers:{
            "Content-Type":'application/json'
        },
        body:JSON.stringify({
            emafff
        })
    })
    let data = await res.json();
  
        console.log("data.status",data.status);
        if(data.status===404){
           
            document.getElementById("chkmail1").innerHTML="email already exit";
            document.getElementById("chkmail1").style.color='red';
            document.getElementById("submit").disabled=true;
            document.getElementById("passchk1").disabled=true;
         }
          else{
            document.getElementById("chkmail1").innerText = ' ';
             document.getElementById("submit").disabled = false;
              document.getElementById("passchk1").disabled = false;
          }
          console.log("IN");
    };    


async function chknm(nmvalid){




    let res =await fetch('http://localhost:8081/name',{
            method: "post",
            headers: {
                "Content-Type": 'application/json'
            },
            body: JSON.stringify({
                nmvalid
            })


        })
       

        let data = await res.json();
        console.log("data.status",data.status);
        console.log(data.msg);

        if (data.status === 404) {
            document.getElementById("chknm1").innerHTML = "user  already exists";
            document.getElementById("chknm1").style.color = 'red';
            document.getElementById("submit").disabled = true;

        } else {
            document.getElementById("chknm1").innerText = ' ';
            document.getElementById("submit").disabled = false;
        }
    }

 
