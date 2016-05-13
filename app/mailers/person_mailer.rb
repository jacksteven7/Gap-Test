class PersonMailer < ApplicationMailer

  #from: "JackSteven7@gmail.com"

  def person_created(person)
    @person = person
    mail to: person.email, subject: "People App - New person added"
  end

  def person_delated(name,email)
    @name = name
    @email = email
    mail to: email, subject: "People App - Person deleted"
  end
end
