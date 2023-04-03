const express = require("express");
const mysql = require("mysql2");

const app = express();
var cookie = require('cookie-parser');
const bodyparser = require('body-parser');
app.use(bodyparser.json());
app.use(bodyparser.urlencoded({ extended: true }));
app.use(express.static('public'));
app.use(express.static('images'));
var jwt = require('jsonwebtoken');


app.use(cookie());
const bcrypt = require('bcrypt');


const sqlconnect = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'root',
    database: 'user_login'
});


app.set('views engine', 'ejs');
app.get('/', function (req, res) {
    res.render('register.ejs');
});

app.get('/tiktak',function(req,res){
    let token = req.cookies.token;
    if (!token) {
        res.redirect("/");
    }
    else{
        res.render('TickTack.ejs');
    }

    
});

app.get('/Webpage',function(req,res){
    let token = req.cookies.token;
    if (!token) {
        res.redirect("/");
    }
    else{
        res.render('web1.ejs');
    }

    
});



app.get('/login', function (req, res) {

    
    res.render('login.ejs');
});

app.get('/home', function (req, res) {
    let token = req.cookies.token;
    if (!token) {
        res.redirect("/");
    }
    let decode = jwt.verify(token, "akib");
    console.log(decode.user);
    res.render('welcome.ejs', { user: decode.user });
});



async function queryDb(query) {
    return new Promise((resolve, reject) => {
        sqlconnect.query(query, (err, result) => {
            if (err) {
                return reject(err);
            }
            console.log(result);
            resolve(result);
        });
    })
}

app.set('views engine', 'ejs');
app.get('/', function (req, res) {
    res.render('register.ejs');
});

app.listen(8081);

app.post('/submit', async function (req, res) {

    let randomSt = '';
    const characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
    const charactersLength = characters.length;
    let counter = 0;
    while (counter < charactersLength) {
        randomSt += characters.charAt(Math.floor(Math.random() * charactersLength));
      counter += 1;
    }

console.log("random  hi   data",randomSt);
    let fname = req.body.user_name;
    let email = req.body.user_email;
    let password = req.body.user_password;

    if (fname == "" || email == "" || password == "") {


        res.render("register.ejs");
        return false;

    }


    let salt = await bcrypt.genSalt(10);
    let haspassword =await bcrypt.hash(password, salt);
    

     
        //let randomStr = (Math.floor(Math.random() * 1000000)) + "ajqj672aka&*()&s" + (Math.floor(Math.random() * 1000000)) + "@##$$" (Math.floor(Math.random() * 1000000)) ;
   

        const insert_users_query = `INSERT INTO user_login.login_table (user_name, user_email,user_password,isActive,ranstr) VALUES ('${fname}','${email}', '${haspassword}','0','${randomSt}')`;
 
        const result = await queryDb(insert_users_query);
        console.log("here")
        let payload = { fname: fname, email: email, haspassword: haspassword }
        let token = await jwt.sign(payload, "akib");
        console.log(token)
        res.cookie("token", token);

        res.send(`active your link <a href="/AKIB?ranStr=${randomSt}">click hear</a>`);
         
   



});
app.get("/AKIB", async(req, res) => {
    let akib = req.query.ranStr;

    let query = `update user_login.login_table set isActive = '1' where ranStr = '${akib}'`;
    const result = await queryDb(query);

    res.redirect("/login");

    //run query

});

app.post('/login_chk', async function (req, res) {

    let email = req.body.user_email;
    let password = req.body.user_password;

    if ( email == "" || password == "") {


        res.render("login.ejs");
        return false;

    }

    console.log("passs"+password);

 

            const users_login_query = ` SELECT * FROM login_table WHERE user_email = "${email}"  `;
            const result = await queryDb(users_login_query);
            console.log("result query",result[0].user_password);
           const pass = await bcrypt.compare(password,result[0].user_password);


           console.log("pass",pass);
           

            if(!pass){
                res.redirect("/login")
                return false;
                
            }
            let payload = {  user: result[0].user_name}
        let token = await jwt.sign(payload, "akib");
        console.log(token)
        res.cookie("token", token);
    res.redirect('/home');


})



app.post("/email",async(req,res)=>{

    let email=req.body.emafff;


    const queryem=`select user_email from login_table where user_email="${email}";`
    const result = await queryDb(queryem);
    console.log("chkgyughyu",result.length);

    if((result.length)>0){
        res.json({msg:'already exists',status:404})
    }
    else{
        res.json({msg:''})
    }

})

app.post("/name", async(req, res) => {
    const name = req.body.nmvalid;
    console.log("valid",name);
    const querynm = `SELECT user_name FROM login_table where user_name = '${name}'; `
    const result = await queryDb(querynm);

   

    if ((result.length >0)) {
        res.status(404);
        res.json({ msg: 'Already Used', status: 404 });
    } else {

        res.json({ msg: ' ' });
    }
});

app.get('/logout',(req,res)=>{
    res.clearCookie('token');
    res.redirect("/login")
})