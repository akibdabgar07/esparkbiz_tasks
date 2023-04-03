const express = require("express");
const mysql = require("mysql2");

const app = express();
const bodyparser = require('body-parser');
app.use(bodyparser.json());
app.use(bodyparser.urlencoded({ extended: true }));

const sqlconnect = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'root',
    database: 'job_application'
});
app.set('views engine', 'ejs');

app.get('/', function (req, res) {
    let data = [];

    sqlconnect.query("select * from option_master where select_master_id=1 ", function (err, results, fields) {

        if (err) throw err;
        data[0] = results;



    });

    sqlconnect.query("select * from option_master where select_master_id=2 ", function (err, results, fields) {

        if (err) throw err;

        data[1] = results;



    });

    sqlconnect.query("select * from option_master where select_master_id=3 ", function (err, results, fields) {

        if (err) throw err;

        data[2] = results;


    });

    sqlconnect.query("select * from option_master where select_master_id=4 ", function (err, results, fields) {

        if (err) throw err;

        data[3] = results;



    });

    sqlconnect.query("select * from option_master where select_master_id=5 ", function (err, results, fields) {

        if (err) throw err;

        data[4] = results;



    });

    sqlconnect.query("select * from option_master where select_master_id=6 ", function (err, results, fields) {

        if (err) throw err;

        data[5] = results;



    });

    sqlconnect.query("select * from option_master where select_master_id=7 ", function (err, results, fields) {

        if (err) throw err;

        data[6] = results;



    });

    sqlconnect.query("select * from option_master where select_master_id=8 ", function (err, results, fields) {

        if (err) throw err;

        data[7] = results;


        res.render('job_application.ejs', { relation: data[0], state: data[1], course: data[2], board: data[3], language: data[4], techno: data[5], prefered: data[6], deptartment: data[7] })
    });
});

app.post('/submit', function (req, res) {
    let fname = req.body.fname;
    let lname = req.body.lname;
    let designation = req.body.designation;
    let email = req.body.email;
    let contact = req.body.contact;
    let gender = req.body.gender;
    let relationship_status = req.body.relationship_status;
    let street1 = req.body.street1;
    let street2 = req.body.street2;
    let city = req.body.city;
    let state = req.body.state;
    let zipcode = req.body.zipcode;
    let dob = req.body.dob;

    //education var;

    let course_name = req.body.course_name;
    let course_board = req.body.course_board;
    let course_percentage = req.body.course_percentage;
    let passing_year = req.body.passing_year;

    console.log(course_name);
    console.log(course_board);
    console.log(course_percentage);
    console.log(passing_year);

    let company_name = req.body.company_name;
    let position = req.body.position;
    let ctc = req.body.ctc;
    let start_date = req.body.start_date;
    let end_date = req.body.end_date;

    let location = req.body.location;
    let CTC1 = req.body.CTC1;
    let CTC2 = req.body.CTC2;
    let dept = req.body.dept;
    let Notice = req.body.Notice;

    console.log(location);
    console.log(CTC1);
    console.log(CTC2);
    console.log(dept);
    console.log(Notice);


    let ref1 = req.body.ref1;
    let rcontact1 = req.body.rcontact1;
    let Relation1 = req.body.Relation1;


    let ref2 = req.body.ref2;
    let rcontact2 = req.body.rcontact2;
    let Relation2 = req.body.Relation2;


    function queryDb(query) {
        return new Promise((resolve, reject) => {
            sqlconnect.query(query, (err, result) => {
                if (err) {
                    return reject(err);
                }
                resolve(result);
            });
        })
    }



    async function insert_data() {
        try {
            const insert_users_query = `INSERT INTO basic_info (fname, lname,contact,designation,email,gender,dob,relationship_status,street1,street2,city,state,zipcode) VALUES ('${fname}','${lname}', '${contact}','${designation}','${email}','${gender}','${dob}','${relationship_status}','${street1}','${street2}','${city}','${state}','${zipcode}')`;
            const result = await queryDb(insert_users_query);
            console.log(result);
            let c_id = result.insertId;

            for (let i = 0; i < course_name.length; i++) {


                if (typeof (course_name) == "string") {
                    const academic_query = `INSERT INTO academic (course_name,course_board,course_percentage,passing_year,c_id) VALUES('${course_name}','${course_board}','${course_percentage}','${passing_year}','${c_id}')`;
                    await queryDb(academic_query);
                    break;
                }
                else {
                    const academic_query = `INSERT INTO academic (course_name,course_board,course_percentage,passing_year,c_id) VALUES('${course_name[i]}','${course_board[i]}','${course_percentage[i]}','${passing_year[i]}','${c_id}')`;
                    await queryDb(academic_query);
                }
            }

            for (let i = 0; i < company_name.length; i++) {

                if (typeof (company_name) == "string") {
                    const Work_Experience_query = `INSERT INTO experience (company_name,position,ctc,start_date,end_date,c_id) VALUES('${company_name}','${position}','${ctc}','${start_date}','${end_date}','${c_id}')`;
                    await queryDb(Work_Experience_query);
                    break;
                }
                else {
                    const Work_Experience_query = `INSERT INTO experience (company_name,position,ctc,start_date,end_date,c_id) VALUES('${company_name[i]}','${position[i]}','${ctc[i]}','${start_date[i]}','${end_date[i]}','${c_id}')`;
                    await queryDb(Work_Experience_query);

                }
            }

            for (let i = 0; i < location.length; i++) {
                if (typeof (location) == "string") {
                    const prefered_location = `INSERT INTO preferd_location_city (p_location,c_id) VALUES('${location}','${c_id}')`;
                    await queryDb(prefered_location);
                }
                else {
                    const prefered_location = `INSERT INTO preferd_location_city (p_location,c_id) VALUES('${location[i]}','${c_id}')`;
                    await queryDb(prefered_location);
                }
            }

            const prefered = `INSERT INTO preferances (notice_period,expacted_ctc,current_ctc,department,c_id) VALUES('${Notice}','${CTC1}','${CTC2}','${dept}','${c_id}')`;
            await queryDb(prefered);

            const reference1 = `INSERT INTO references_table (reference_name,contact_no,relation,c_id) VALUES('${ref1}','${rcontact1}','${Relation1}','${c_id}')`;
            await queryDb(reference1);

            const reference2 = `INSERT INTO references_table  (reference_name,contact_no,relation,c_id) VALUES('${ref2}','${rcontact2}','${Relation2}','${c_id}')`;
            await queryDb(reference2);





            const resultid5 = await queryDb("select * from option_master where select_master_id=5 ")
            let language = [];
            for (let index = 0; index < resultid5.length; index++) {
                language[index] = resultid5[index]["option_value"];
                console.log(language[index]);
                let lan = req.body["" + language[index]];
                let lanr = req.body["" + language[index] + "r"];
                let lanw = req.body["" + language[index] + "w"];
                let lans = req.body["" + language[index] + "s"];

                if (lan == "on") {
                    if (lanr == undefined) {
                        lanr = "no";
                    }
                    else {
                        lanr = "yes";
                    }
                    if (lanw == undefined) {
                        lanw = "no";
                    }
                    else {
                        lanw = "yes";
                    }
                    if (lans == undefined) {
                        lans = "no";
                    }
                    else {
                        lans = "yes";
                    }

                    console.log(lan);
                    console.log(lanr);
                    console.log(lanw);
                    console.log(lans);


                    const language_query = `INSERT INTO language_known (language,lan_read,lan_write,lan_speak,c_id) VALUES('${language[index]}','${lanr}','${lanw}','${lans}','${c_id}')`;

                    const resultt = await queryDb(language_query);

                }




            }



            const tech = `select * from option_master where select_master_id=6 `;
            const result8 = await queryDb(tech);
            let techno = [];
            for (let index = 0; index < result8.length; index++) {
                techno[index] = result8[index]["option_value"];
                let Technologies1 = req.body[techno[index]];
                let techr = req.body[techno[index] + "r"];


                // console.log(Technologies1);

                if (Technologies1 == "on") {
                    const tech_query = `INSERT INTO technology (technology_name,rating,c_id) VALUES('${techno[index]}','${techr}','${c_id}')`;
                    console.log(techno[index]);

                    const result9 = await queryDb(tech_query);
                    console.log(techr);

                }

            }


        }







        catch (e) {
            console.log(e);
        }

    }

    insert_data();


    res.end('<script>alert(" inserted data successfully ");window.location.href="http://localhost:8084/job";</script>');
});

app.get('/job', function (req, res) {
    let searching = req.query.searching;
    console.log(searching);
    if (searching == undefined || searching == "") {
        searching = "";
        sqlconnect.query("select * from basic_info ", function (err, results, fields) {

            res.render('jobtable.ejs', { data: results, searching })
        })
    }
    else {

        let and_search=req.query.data;
       
        console.log(and_search);
        
       
        if(and_search=="and"){
        let str1;
        str1 = searching.replaceAll("^", "' AND fname = '");
        str1 = str1.replaceAll("*", "' AND lname = '");
        str1 = str1.replaceAll("$", "' AND designation = '");
        str1 = str1.replaceAll("+", "' AND city = '");
        str1 = str1.replaceAll("!", "' AND email = '");
        str1 = str1.replaceAll("#", "' AND gender = '");
        str1 = str1.replaceAll("%", "' AND dob = '");
        str1 = str1.replaceAll("~", "' AND state = '");





        console.log(str1);
        str2 = str1.slice(6, str1.length);
        str2 = str2.concat("'");
        console.log(str2);


        sqlconnect.query("select * from basic_info where  "  + str2, function (err, results, fields) {

            res.render('jobtable.ejs', { data: results,searching })
        }
        )


        }
       else{

        let str4;
        str4 = searching.replaceAll("^", "' OR fname = '");
        str4 = str4.replaceAll("*", "' OR lname = '");
        str4 = str4.replaceAll("$", "' OR designation = '");
        str4 = str4.replaceAll("+", "' OR city = '");
        str4 = str4.replaceAll("!", "' OR email = '");
        str4 = str4.replaceAll("#", "' OR gender = '");
        str4 = str4.replaceAll("%", "' OR dob = '");
        str4 = str4.replaceAll("~", "' OR state = '");


        console.log(str4);
        str5 = str4.slice(5,str4.length);
        str5 = str5.concat("'");
        console.log(str5);


        sqlconnect.query("select * from basic_info where  "  + str5, function (err, results, fields) {

            res.render('jobtable.ejs', { data: results,searching })
        }
        )
    }
}

});
app.listen(8085);

