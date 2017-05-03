class WalletpaymentSerializer < ActiveModel::Serializer
  attributes :id ,:paymentdate , :amount ,:previouswalletbalance , :afterwalletbalance , :paymentmethod , :refno ,:remarks

  belongs_to :user
end
