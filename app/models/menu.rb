class Menu < ApplicationRecord
	belongs_to :restaurant
	belongs_to :category
	has_many :menu_tags
	validates :name, :category_id, :restaurant_id, presence: true
end
