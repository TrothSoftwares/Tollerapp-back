class UserSerializer < ActiveModel::Serializer
  attributes :id , :email ,:role  ,:dyndns , :internetport , :ethernetport ,:nameofinstitution,:contactno,:location,:installationdate
  has_many :audios
  has_many :tickets
  has_many :payments
  has_many :walletpayments


  belongs_to :group

end
