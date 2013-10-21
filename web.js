var express = require("express");
var app = express();
app.use(express.logger()); 

app.get('/', function(request, response) {
  response.send('Hello World!');
});

var port = process.env.PORT || 5000;
app.listen(port, function() {
  console.log("Listening on " + port);
}); 

    var static = require('node-static');

    //
    // Create a node-static server instance to serve the './public' folder
    //
    var file = new static.Server('./public');

    require('http').createServer(function (request, response) {
        request.addListener('end', function () {
            //
            // Serve files!
            //
            file.serve(request, response);
        }).resume();
    }).listen(8080);