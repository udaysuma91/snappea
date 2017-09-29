class MenuTag < ApplicationRecord
	belongs_to :menu
	validates :name, :menu_id, presence: true
end

