class PersonMailerCreatedQueue
	@queue = :person_mailer_queue

	def self.perform(person_id)
		person = Person.find(person_id)
		PersonMailer.person_created(person).deliver_now
	end

end
