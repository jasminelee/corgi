class User < ActiveRecord::Base
	has_many :corgis
	attr_accessor :password
	before_save {self.email = email.downcase}

	validates :name, presence: true, length: {maximum: 50}
	EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, uniqueness: true, format: EMAIL_REGEX, length: {maximum: 255}
	validates :password, presence: true, confirmation: true, length: {within: 2..30}, on: :create
	validates :password, confirmation: true, length: {within: 2..30}, on: :update
end
