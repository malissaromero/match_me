// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks

//= require_tree .
'use strict';

(function() {
  var app = angular.module('matchme', [
    'ngRoute',
    'ngResource',
    'userControllers',
    'userServices',
    'userRouter'
  ]);
})();

// $(document).ready(function(){
//   $("h1").on("click", function(){
//    var url = "https://api.traitify.com/v1/assessments/{d42bb058-ee15-4ba3-b816-fc5f438ae680}/slides"
//    $.ajax({
//      url: url,
//      type: "GET",
//      dataType: "json"
//    }).done(function(){
//      console.log("ajax request success!")
//    }).fail(function(){
//      console.log("ajax request fails!")
//    }).always(function(){
//      console.log("this always happens regardless of successful ajax request or not")
//    })
//  })
// })
