class Examtiming < ApplicationRecord
  has_many :assignations
  belongs_to :examscheduleset
end
