$(document).ready(function(){
   $(".favorite").on("click", function() {
     if($(this).text()==="favorite"){
       addToFavs(this);
     } else {
       removeFromFavs(this);
     }
   })
})

 function addToFavs(selector) {
   $(selector).text("remove from favorites");
   var id = $(selector).attr("data-id")
   $.ajax({
     dataType: 'text',
     type: "post",
     url: "/favorites",
     data: { item_id: id }
   })
 }

 function removeFromFavs(selector) {
   $(selector).text("favorite");
   var id = $(selector).attr("data-id")
   $.ajax({
     dataType: 'text',
     type: "delete",
     url: "/favorites/" + id,
     data: { item_id: id }
   })
 }
