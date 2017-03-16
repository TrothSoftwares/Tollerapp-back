class Timing < ApplicationRecord
  has_many :assignations
  belongs_to :scheduleset
end
