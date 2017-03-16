class Scheduleset < ApplicationRecord

has_many :timings
belongs_to :user
has_many :assignations

end
