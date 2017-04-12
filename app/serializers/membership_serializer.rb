class MembershipSerializer < ActiveModel::Serializer
  attributes :id , :owner
belongs_to :user
belongs_to :group
end
