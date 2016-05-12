class PersonMailer < ApplicationMailer

  def person_created(person)
    mail to: person.email, subject: "People App - New person added"
  end

  def person_delated(person)
    mail to: person.email, subject: "People App - Person deleted"
  end
end
