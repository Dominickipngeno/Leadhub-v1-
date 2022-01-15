(function($) {

	"use strict";

	$(".toggle-password").click(function() {

  $(this).toggleClass("fa-eye fa-eye-slash");
  var input = $($(this).attr("toggle"));
  if (TextBox.attr("TextMode") == "Password") {
      TextBox.attr("TextMode", "text");
  } else {
    TextBox.attr("TextMode", "Password");
  }
});

})(jQuery);
