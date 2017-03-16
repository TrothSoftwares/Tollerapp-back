class AssignationSerializer < ActiveModel::Serializer
  attributes :id , :time , :day
  belongs_to :scheduleset
end
