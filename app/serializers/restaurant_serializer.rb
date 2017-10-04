class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :rating, :address, :description
  has_many :menus
end


