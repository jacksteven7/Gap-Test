class Person < ActiveRecord::Base
	require 'date'

	validates :first_name , presence: true, length: { maximum: 75 }
	validates :last_name , presence: true, length: { maximum: 75 }
	validates :email, presence: true, length: { maximum: 254 }, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: "Enter a valid Email" , on: :create }	
	validates :job , length: { maximum: 75 }
	validates :bio , length: { minimum: 30 }
	validates :gender, :inclusion => { :in => %w( male female ), :message => "Please select a gender" }
	validates :birthdate, presence: true#, :is_valid_date
	
	def name
	 first_name + " "+ last_name	
	end

	def age
		now = Time.now.utc.to_date
		age = now.year - birthdate.year - (birthdate.to_date.change(:year => now.year) > now ? 1 : 0)
		age
	end
end