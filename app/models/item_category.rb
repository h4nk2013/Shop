class ItemCategory < ActiveRecord::Base
  attr_accessible :category_id, :item_id
  belongs_to :categories
  belongs_to :items
end
