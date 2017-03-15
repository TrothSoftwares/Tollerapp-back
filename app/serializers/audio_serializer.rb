class AudioSerializer < ActiveModel::Serializer

  attributes :id ,:description ,:url ,:fullurl ,:filename

belongs_to :user

def url
  object.url
end

def filename
  object.url.to_s.split("/").last

end



def fullurl
     object.url.to_s
end



end
