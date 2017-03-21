class Examscheduleset < ApplicationRecord
  has_many :examtimings
  belongs_to :user
  has_many :examassignations
end
