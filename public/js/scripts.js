
  $(function() {
    $( "#accordion" ).accordion();
    $(".clickable").click(function() {
      $(this).addClass("not-paid");
    });
  });
