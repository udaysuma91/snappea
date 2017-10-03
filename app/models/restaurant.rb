class Restaurant < ApplicationRecord
	has_many :menus
	validates :name,:rating,:address,:description, presence: true
end
