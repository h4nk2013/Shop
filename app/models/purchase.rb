class Purchase < ActiveRecord::Base
  attr_accessible :user_id, :item_id

  belongs_to :user
  belongs_to :item
end
