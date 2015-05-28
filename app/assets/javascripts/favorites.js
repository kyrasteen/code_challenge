$(document).ready(function(){
  var $favorite = $(".favorite")
  $favorite.on("click", function() {
    var $item = $(this).parents(".item")
    debugger;
    $(this).text("remove from favorites")
    $.ajax({
      dataType: 'text',
      type: "post",
      url: "/favorites",
      data: { data_value: $item.find("h5").text()}
    })
  })
})
