class User < ApplicationRecord
	
	attr_accessor :password_salt, :password_hash
	validates :name,:email,:password, presence: true
	after_create :generate_uuid
	before_save :encrypt_password
	
	def generate_uuid
		if self.guid.blank?
			self.guid = SecureRandom.uuid
			self.save
		end
	end

	def encrypt_password
  	if password.present?
    	self.password_salt = BCrypt::Engine.generate_salt
    	self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
  		self.password = self.password_hash
  	end
	end

end
