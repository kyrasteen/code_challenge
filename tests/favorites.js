describe("Favorites", function() {
  it("creates a favorite", function(){
    var item = JSON.parse("<p class='favorite' data-id='1'>favorite</p>")
    addToFavs(item)
    chai.assert.equal($(item).text(), "remove from favorites")
  })
}
