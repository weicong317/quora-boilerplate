class User < ActiveRecord::Base
	has_many :questions
	has_many :answers
	has_many :questionvotes
	has_many :answervotes
	has_secure_password

	validates :name, format: { with: /\w+\s*\w+\s*\w+/}
	validates :email, format: { with: /\w+@\w+.\w+/}, uniqueness: true
	validates :password, length: { in: 6..20 }
end