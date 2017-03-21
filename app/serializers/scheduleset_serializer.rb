class SchedulesetSerializer < ActiveModel::Serializer
  attributes :id
  has_many :timings
  belongs_to :user
  has_many :assignations
end
