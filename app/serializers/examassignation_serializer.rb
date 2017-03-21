class ExamassignationSerializer < ActiveModel::Serializer
  attributes :id , :time
  belongs_to :examscheduleset
end
