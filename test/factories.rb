FactoryGirl.define do
  factory :person do
    first_name "Lorenzo"
    last_name  "Lamas"
    email "Lorenzo.Lamas@gmail.com"
    job "Rails Dev"
    bio "Rails Dev for Gap, a company located in Medellin, Antioquia Colombia."
    gender "male"
    birthdate Date.today
  end
end