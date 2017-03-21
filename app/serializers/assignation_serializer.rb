class AssignationSerializer < ActiveModel::Serializer
  attributes :id ,:day
  belongs_to :scheduleset
end
