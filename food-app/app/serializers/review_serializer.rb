class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :restaurant_name, :food_name, :food_review, :service_review
  has_one :user 
end
