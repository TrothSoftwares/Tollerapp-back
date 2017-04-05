class SchedulesetSerializer < ActiveModel::Serializer
  attributes :id ,:description
  has_many :timings
  belongs_to :user
  has_many :assignations
end
