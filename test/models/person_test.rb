require 'test_helper'

class PersonTest < ActiveSupport::TestCase

  setup do
    @person = FactoryGirl.build(:person)
  end


  test "Valid User" do
    assert @person.valid? == true
  end

  test "Invalid email" do
    @person.email = "Someone@mail"
    assert @person.valid? == false
    assert_equal ["Enter a valid Email"], @person.errors.messages[:email]
  end

  test "Invalid gender" do
    @person.gender = ""
    assert @person.valid? == false
    assert_equal ["Please select a gender"], @person.errors.messages[:gender]
  end

  test "Invalid bio" do
    @person.bio = ""
    assert @person.valid? == false
    assert_equal ["is too short (minimum is 30 characters)"], @person.errors.messages[:bio]
  end

end