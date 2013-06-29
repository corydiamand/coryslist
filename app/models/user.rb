class User < ActiveRecord::Base
	has_secure_password
	has_many :lists, dependent: :destroy
	has_many :tasks, through: :lists

	attr_accessible :email, :password, :password_confirmation

	validates_uniqueness_of :email

end
