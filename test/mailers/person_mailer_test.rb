require 'test_helper'

class PersonMailerTest < ActionMailer::TestCase
  test "person_created" do
    mail = PersonMailer.person_created
    assert_equal "Person created", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "person_delated" do
    mail = PersonMailer.person_delated
    assert_equal "Person delated", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
