var express = require("express");
var app = express();
var bodyParser = require("body-parser");
var index = require("./routes/index");
var port = 3000;

// Use middlewares to set view engine and post json data to the server
app.set("view engine", "ejs");
app.use(express.static("public"));
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

app.use("/", index);

// catch 404 and forward to error handler
app.use(function(req, res) {
  res.status(404).redirect("https://en.wikipedia.org/wiki/HTTP_404");
});


// error handler
app.use(function(err, req, res) {
  // render the error page
  res.status(err.status || 500);
  res.render('error', {status:err.status, message:err.message});
});

// Start the server
app.listen(port, function() {
  console.log("Server is running on Port: ", port);
});

module.exports = app;
