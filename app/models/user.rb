class User < ActiveRecord::Base
	
	attr_accessor :password, :password_confirmation
	validates :password,  :presence => true
	
end
