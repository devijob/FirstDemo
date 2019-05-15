function validate(){
    var name=document.querySelector('#name').value;
    var age=document.querySelector('#age').value;
	var mobile=document.querySelector('#mobile').value;
    var email=document.querySelector('#email').value;

    if((name.length>20)||(parseInt(age)<10)||(!valEmail(email))||(!(/^(\+\d{1,3}[- ]?)?\d{10}$/.test(mobile)))){
        if(name.length>20){
            document.querySelector('#nameError').textContent="**your Name exceeded 20 Charecters";
        }
        else
        document.querySelector('#nameError').textContent="";

        if(parseInt(age)<10){
            document.querySelector('#ageError').textContent="**You are under 10, You can't take this online course ";
        }else
        document.querySelector('#ageError').textContent="";

        if(!valEmail(email)){
            document.querySelector('#emailError').textContent="**Invalid email address";
        }else
        document.querySelector('#emailError').textContent="";

        if(!(/^(\+\d{1,3}[- ]?)?\d{10}$/.test(mobile))){
            document.querySelector('#mobileError').textContent="**Invalid mobile number";
        }else
        document.querySelector('#mobileError').textContent="";
       
        return false;
    }}
    //Validates Email
    function valEmail(emailAddress){
        if(!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(emailAddress))){
            return false;
        }else{
            return true;
        }
    }
	
   $(document).ready(function() {
        $('input[id$=tdDate]').datepicker({});
    });
	
	$(document).ready(function(){
    $('input[id$=tdTime]').timepicker({});
});





$( function() {
    $( "#draggable" ).draggable();
    $( "#droppable" ).droppable({
      drop: function( event, ui ) {
        $( this )
          .addClass( "ui-state-highlight" )
		  .find( "p" )
            .html( "Dropped!" );
          
      },
	 out: function( event, ui ) {
        $( this )
          .removeClass( "ui-state-highlight" )

      }
    });
	
  } );

    