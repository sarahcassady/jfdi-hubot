var 	express = require('express');
var	app = express();
app.use(express.logger()); 
app.use(express.static(__dirname + '/public'));
/*
var fs = require('fs');
var cas = [fs.readFileSync('/Users/sarahcassady/ca.pem')];
https.globalAgent.options.ca = cas;
*/
var port = process.env.PORT || 8080;
app.listen(port, function() {
  console.log("Listening on " + port);
});