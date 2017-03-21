class ExamtimingSerializer < ActiveModel::Serializer
  attributes :id , :time , :file
  belongs_to :examscheduleset
end
