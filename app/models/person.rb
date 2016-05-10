class Person < ActiveRecord::Base
	validates :first_name , presence: true, length: { maximum: 75 }
	validates :last_name , presence: true, length: { maximum: 75 }
	validates :email, presence: true, length: { maximum: 254 }, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: "Only allows letters" , on: :create }	
	validates :job , length: { maximum: 75 }
	validates :bio , length: { minimim: 30 }
	validates :gender , :gender, :inclusion => { :in => %w( male female ), :message => "Please select a gender" }
	validates :birthdate, presence: true, :is_valid_date

	def is_valid_date
		errors.add(:birthdate, 'must be a valid date') if ((DateTime.parse(birthdate)>DateTime.now.to_date))
	end

end
