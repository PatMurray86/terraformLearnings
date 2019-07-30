(function(){function r(e,n,t){function o(i,f){if(!n[i]){if(!e[i]){var c="function"==typeof require&&require;if(!f&&c)return c(i,!0);if(u)return u(i,!0);var a=new Error("Cannot find module '"+i+"'");throw a.code="MODULE_NOT_FOUND",a}var p=n[i]={exports:{}};e[i][0].call(p.exports,function(r){var n=e[i][1][r];return o(n||r)},p,p.exports,r,e,n,t)}return n[i].exports}for(var u="function"==typeof require&&require,i=0;i<t.length;i++)o(t[i]);return o}return r})()({1:[function(require,module,exports){
// const copydir = require("copy-dir");

$(document).ready(function() {
  var Genocide = [
    { display: "Toriel Fight" },
    { display: "Snowdin Forest Begins" },
    { display: "Papyrus Fight" },
    { display: "Waterfall Begins" },
    { display: "Glad Dummy Fight" },
    { display: "Undyne the Undying Fight" },
    { display: "Undyne the Undying Defeated" },
    { display: "Hotland Begins" },
    { display: "Royal Guards Fight" },
    { display: "Muffet Fight" },
    { display: "Before the Point of No Return" },
    { display: "Mettaton NEO Fight" },
    { display: "New Home" },
    { display: "Sans Fight" },
    { display: "Before Asgore" }
  ];

  var Pacifist = [
    { display: "The Ruins Begins" },
    { display: "Leaf-Pile Room" },
    { display: "Napstablook Fight" },
    { display: "Before Toriel's Home" },
    { display: "Toriel Fight" },
    { display: "Toriel's in the First Room" },
    { display: "Snowdin Forest Begins" },
    { display: "Doggo Fight" },
    { display: "Dogi Fight" },
    { display: "Greater Dog Fight" },
    { display: "Papyrus Fight" },
    { display: "Papyrus's Date" },
    { display: "Sans's First Date" },
    { display: "Grass Room" },
    { display: "Crystallized Cheese Room" },
    { display: "Bridge Before Garbage Dump" },
    { display: "Mad Dummy Fight" },
    { display: "Quiet Water Room" },
    { display: "Temmie Village" },
    { display: "Undyne Fight" },
    { display: "Undyne Chase Scene" },
    { display: "Undyne's Date" },
    { display: "Mettaton's Quiz Show" },
    { display: "Mettaton's Cooking Show" },
    { display: "Before Sans's Illegal Hot Dog Stand" },
    { display: "Royal Guards Fight" },
    { display: "Mettaton's News Report" },
    { display: "Muffet Fight" },
    { display: "Mettaton's Musical" },
    { display: "Sans's Second Date" },
    { display: "The CORE's Branching Paths" },
    { display: "Mettaton EX Fight" },
    { display: "The Capital" },
    { display: "New Home" },
    { display: "Sans's Judgement" },
    { display: "Asgore's Introduction" },
    { display: "Asgore Fight" },
    { display: "Photoshop Flowey Fight" },
    { display: "Photoshop Flowey Defeated" },
    { display: "Alphys's Date" },
    { display: "Before the Full Family Neutral Ending" },
    { display: "Before Entering the True Lab" },
    { display: "True Lab Begins" },
    { display: "True Lab's Bedroom" },
    { display: "True Lab Ends" },
    { display: "Asriel Dreemurr Fight" },
    { display: "The Epilogue" },
    { display: "Asriel's in the First Room" },
    { display: "Snowdin's Secret Door Unlocked" }
  ];

  $(".save-selector").change(function() {
    var parent = $(this).val();
    switch (parent) {
      case "Genocide Saves":
        list(Genocide);
        break;
      case "Pacifist Saves":
        list(Pacifist);
        break;
      default:
        $(".level-selector").html("");
        break;
    }
  });

  $(".level-selector").change(
    // function() {
    //   var parent = $(this).val();
    //   copyFiles(parent);
    //   switch (parent) {
    //     case A:
    //       break;
    //     default:
    //       break;
    //   }
    // },

    // function copyFiles(parent) {
    //   var p = parent;
    //   alert(p.value);
    //   copydir(
    //     "/Users/patrickmurray/Desktop/testCopy",
    //     "/Users/patrickmurray/Desktop/copyTest",
    //     {
    //       utimes: true,
    //       mode: true
    //     },
    //     function(err) {
    //       if (err) throw err;
    //       alert("Copy done");
    //     }
    //   );
    // }
  );

  function list(array_list) {
    $(".level-selector").html("");
    $(array_list).each(function(i) {
      $(".level-selector").append(
        "<option>" + array_list[i].display + "</option>"
      );
    });
  }
});

},{}]},{},[1]);
