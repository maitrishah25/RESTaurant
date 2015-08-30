
  $(function() {
    $( "#accordion" ).accordion({
      collapsible: true,
      active: false
    });
    $(".clickable").click(function() {
      $(this).addClass("not-paid");
    });
    // $(".order-complete").click(function(){
    //   $(this).parent().addClass("hide");
    //   return false;
    // });

  });
