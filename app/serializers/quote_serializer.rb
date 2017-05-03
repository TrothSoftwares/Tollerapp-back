class QuoteSerializer < ActiveModel::Serializer
  attributes :id , :quotetext ,:author ,:status
end
