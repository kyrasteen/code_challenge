class Favorite < ActiveRecord::Base
  include InvalidatesCache
  belongs_to :item
end
