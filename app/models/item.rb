class Item < ActiveRecord::Base
  attr_accessible :name

  has_many :purchases
  has_many :users, through: :purchases
  has_many :categories
  has_many :item_categories
end
