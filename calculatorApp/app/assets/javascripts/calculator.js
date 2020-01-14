//this function is called on button clicks to display expressions in the textfield
function insert(num){
    document.form.content.value = document.form.content.value + num

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