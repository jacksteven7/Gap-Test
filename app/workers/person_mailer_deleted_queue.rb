class PersonMailerDeletedQueue
 @queue = :person_mailer_queue

 def self.perform(params)
  PersonMailer.person_delated(params["name"],params["email"]).deliver_now
 end

end