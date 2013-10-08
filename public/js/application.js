$(document).ready(function() {
  
  $( "#target" ).submit(function( event ) {
    event.preventDefault(); 
    var data = $( "#sentence" ).serialize();
    $.post( '/grandma', data, function(response) {
      $( "#response" ).html(response);
        if ( response === "BYE SONNY!" ) {
          $( "#target" ).remove();
        }
    });
  });

});
