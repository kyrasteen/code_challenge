describe('Array', function(){
  describe('#indexOf()', function(){
    it('should return -1 when the value is not present', function(){
      chai.assert.equal(-1, [1,2,3].indexOf(5));
      chai.assert.equal(-1, [1,2,3].indexOf(0));
    });
  });
});

describe("Favorites", function() {
  beforeEach(function() {
    sinon.spy($, 'ajax');
    this.requests = [];
    this.xhr = sinon.useFakeXMLHttpRequest();
    this.xhr.onCreate = function (req) { this.requests.push(req); }.bind(this);
  });

  afterEach(function() {
    $.ajax.restore();
    this.xhr.restore;
  });

  it("create makes an ajax call to the server", function() {
    var item = document.getElementById("1")
    addToFavs(item)
    assert($.ajax.calledOnce, "Ajax hit!")
    assert.strictEqual(this.request.length, 1, "One Ajax hit!")
  })

  it("creates a favorite", function(){
    var item = document.getElementById("1")
    addToFavs(item)
    chai.assert.equal(item.innerHTML, "remove from favorites");
  });

  it("removes a favorite", function(){
    var item = document.getElementById("2")
    removeFromFavs(item)
    chai.assert.equal(item.innerHTML, "favorite")
  })
});


