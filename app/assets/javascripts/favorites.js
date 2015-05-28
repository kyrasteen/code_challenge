$(document).ready(function(){
  var $favorite = $(".favorite")
  $favorite.on("click", function(event) {
    event.preventDefault();
    $(this).text("remove from favorites")
    $.ajax({
      type: "post",
      url: $(this).attr("href")
    });
  })
})
