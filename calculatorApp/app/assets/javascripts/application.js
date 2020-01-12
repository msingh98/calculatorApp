// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .


//this function is called on button clicks to display expressions in the textfield
function insert(num){
    document.form.content.value = document.form.content.value+num

}

//this function evaluates the expression in the form to compute the calculation, and shows the expression and result in the textfield
function equal(){
    var exp = document.form.content.value
    if(exp){
        document.form.content.value = exp+'='+ eval(exp)
    }
}

//this function clears the text field
function clean(){
    document.form.content.value = ""

}

//this function splices the last character out of the expression
function back(){
    var exp = document.form.content.value
    document.form.content.value = exp.substring(0,exp.length-1)
}