class GroupSerializer < ActiveModel::Serializer
  attributes :id ,:name

has_many :memberships
has_many :users, through: :memberships
end
