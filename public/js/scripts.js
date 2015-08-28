
  $(function() {
    $( "#accordion" ).accordion({
      collapsible: true,
      active: false
    });
    $(".clickable").click(function() {
      $(this).addClass("not-paid");
    });
  });
