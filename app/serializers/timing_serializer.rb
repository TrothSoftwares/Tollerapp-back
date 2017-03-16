class TimingSerializer < ActiveModel::Serializer
  attributes :id , :time , :file
  has_many :assignations
  belongs_to :scheduleset
end
