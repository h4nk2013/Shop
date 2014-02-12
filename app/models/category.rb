class Category < ActiveRecord::Base
  attr_accessible :name
  belongs_to :item
  has_many :item_categories
end
