class UserSerializer < ActiveModel::Serializer
  attributes :id , :email ,:dyndns , :internetport , :ethernetport ,:nameofinstitution,:contactno,:location,:installationdate
  has_many :audios
  has_many :tickets

end
