class PersonMailer < ApplicationMailer

  def person_created(person)
    @greeting = "Hi"

    mail to: person.email, subject: "People App - New person added"
  end

  def person_delated(person)
    @greeting = "Hi"

    mail to: person.email, subject: "People App - Person deleted"
  end
end
