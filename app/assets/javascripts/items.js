$(document).ready(function() {
  $(window).on("scroll", function(){
    if($(window).scrollTop() > $(document).height() - $(window).height() - 60){
      paginateItems();
    }
  });
});
var pageCount = 0;

function paginateItems(){
   pageCount ++;
   $.getJSON("/items?current_page=" + pageCount)
     .then(function(data) {
       paginate(data)
     });
  }

function paginate(items) {
  items.forEach(function(item){

    $(".container").append(renderItemMarkup(item))
  });
}

function renderItemMarkup(item){
  return "<div class='col-sm-3 item'><h5>" + item.name + '</h5><a href=/items/' + item.id + '><img src=' + item.image_url + '></img></a>'
          + '<p>' + item.description + '</p></div>'
}

