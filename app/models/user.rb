class User < ApplicationRecord
	after_create :generate_uuid
	
	def generate_uuid
		if self.guid.blank?
			self.guid = SecureRandom.uuid
			self.save
		end
	end	
end
