# Preview all emails at http://localhost:3000/rails/mailers/person_mailer
class PersonMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/person_mailer/person_created
  def person_created
    PersonMailer.person_created
  end

  # Preview this email at http://localhost:3000/rails/mailers/person_mailer/person_delated
  def person_delated
    PersonMailer.person_delated
  end

end
