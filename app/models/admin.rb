class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  # Setup accessible (or protected) attributes for your model
  devise :database_authenticatable, :trackable, :timeoutable, :lockable
  # attr_accessible :title, :body
end
