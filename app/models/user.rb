class User < ApplicationRecord
	after_create :generate_uuid
	
	def generate_uuid
		self.guid = SecureRandom.uuid
		self.save
	end	

end