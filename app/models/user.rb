class User < ActiveRecord::Base
	before_save {self.email = email.downcase}
	validates :name, presence: true
	validates :email, presence: true
	has_secure_password
	validates :password, legnth: {minimum: 4}
end