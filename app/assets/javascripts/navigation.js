/* navigation top js */
$(window).scroll("turbolinks:load", function () {
  if ($(this).scrollTop() > 40) {
    $(".templatemo-nav").addClass("sticky");
  } else {
    $(".templatemo-nav").removeClass("sticky");
  }
});
