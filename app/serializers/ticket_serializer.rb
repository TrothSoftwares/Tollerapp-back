class TicketSerializer < ActiveModel::Serializer
  attributes :id ,:title,:body,:status

  belongs_to :user
end
