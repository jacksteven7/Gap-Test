require "test_helper"

class PersonControllerTest < ActionDispatch::IntegrationTest
  
  setup do
   @person = FactoryGirl.build(:person)
  end
  
  test "Should get index" do
    get people_path
    assert_response :success
  end

  test "Should get new person" do
    get new_person_path
    assert_response :success
  end

  test "Should get edit person" do
    get new_person_path(@person)
    assert_response :success
  end

  test "Should show person" do
    @person.id = 1
    @person.save
    get person_path(@person)
    assert_response :success
  end
end
