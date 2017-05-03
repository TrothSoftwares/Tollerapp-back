class PaymentSerializer < ActiveModel::Serializer
  attributes :id ,:paymentdate , :amount, :previouswalletbalance , :afterwalletbalance ,:paymentmethod

  belongs_to :user
end
