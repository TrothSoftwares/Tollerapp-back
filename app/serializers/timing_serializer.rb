class TimingSerializer < ActiveModel::Serializer
  attributes :id , :time , :file
  belongs_to :scheduleset
end
