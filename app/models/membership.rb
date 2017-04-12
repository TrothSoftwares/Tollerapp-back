class Membership < ApplicationRecord

  belongs_to :group
  belongs_to :user
  
  # attr_accessible :name, :description, :isPublic, :tag_list, :owner
end
