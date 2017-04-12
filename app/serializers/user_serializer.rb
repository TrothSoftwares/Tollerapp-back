class UserSerializer < ActiveModel::Serializer
  attributes :id , :email ,:dyndns , :internetport , :ethernetport ,:nameofinstitution,:contactno,:location,:installationdate
  has_many :audios
  has_many :tickets

  has_many :memberships
  has_many :groups, through: :memberships

end
