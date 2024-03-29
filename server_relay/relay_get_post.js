var fs = require("fs");
const hostname = 'localhost';
var port = 1337;
var express = require("express");
var request = require('request');
var bodyParser = require('body-parser');

var app = express();
app.use(express.static(__dirname + "/public")); //use static files in ROOT/public folder

app.use(bodyParser.json())

//const gen_base_url='https://wolfesneck.farmos.net/farm/sensor/listener/'

const gen_base_url='https://edgecollective.farmos.net/farm/sensor/listener/'

// test url to use:
//'http://localhost:1337/?public_key=834c74e03901cd1702c0a3060803f767&private_key=bfe468dc77b5530d65319b67cc39cdbc&temp=14.3&moisture=23.3'

app.post("/", function(req,response){
	response.status(200).send(req.body);
	console.log(req.body.temp);

	var post_url=gen_base_url+req.body.public_key+'?private_key='+req.body.private_key;
    console.log(post_url);

	request.post(
    post_url,
    { json: { 'temp': req.body.temp,'moisture':req.body.moisture } },
    function (error, response, body) {
        if (!error && response.statusCode == 200) {
            console.log(body);
        }
    }
);


});

function addParams(my_set) {
       
	console.log(param);
}

app.get("/", function(req, response){ //root dir

    response.status(200).send(req.query.public_key);
    //var myparams=JSON.stringify(req.query);
    //var param_set = new Set();

    params = {}; 
    for (var propName in req.query) {
    if (req.query.hasOwnProperty(propName)) {
        //console.log(propName, req.query[propName]);
        if ((propName != "public_key") && (propName != "private_key") &&(propName !="farmos_name")) {
        //console.log("yeah",propName,req.query[propName]);	
	//param_set.add([propName,req.query[propName]]);
        params[propName]=req.query[propName]; 
	}
    }
}

   for (var item in params) {
console.log("whee",item,params[item]);
   }

    //console.log("goofy:");
    //param_set.forEach(addParams);

    console.log(req.query.public_key);
    console.log(req.query.private_key);
    //console.log(req.query.temp);
    //console.log(req.query.moisture);
    //console.log(Object.keys(req.params).length);
    //console.log(req.baseUrl);
   
    //var post_url=base_url+req.query.public_key+'?private_key='+req.query.private_key;
    const base_url='https://'+req.query.farmos_name+'.farmos.net/farm/sensor/listener/'
    var post_url=base_url+req.query.public_key+'?private_key='+req.query.private_key;
    console.log(post_url);



request.post(
    post_url,
    //{ json: { 'temp': req.query.temp,'moisture':req.query.moisture } },
    { json: params },
    function (error, response, body) {
        if (!error && response.statusCode == 200) {
            console.log(body);
        }
    }
);





});

app.listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}/`);
});
//app.listen(port, hostname);


