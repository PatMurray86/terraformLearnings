var express = require("express");
var router = express.Router();

router.get("/", function(req, res) {
  res.render("index", { title: "Hell" });
});

router.get("/death", function(req, res) {
  res.render("death", { title: "Death" });
});

router.get("/grim", function(req, res) {
  res.render("grim", { title: "Grim" });
});

router.get("/kayleigh", function(req, res) {
  res.render("kayleigh", { title: "Kayleigh" });
});

router.get("/kacey", function(req, res) {
  res.render("kacey", { title: "Kacey" });
});

router.get("/sans", function(req, res) {
  res.render("sans", { title: "Sans" });
});

router.get("/chole", function(req, res) {
  res.render("chole", { title: "Chole" });
});

module.exports = router;
