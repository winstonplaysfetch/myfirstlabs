# This will guess the User class
FactoryGirl.define do
  factory :user do
    email "jennyndaly@gmail.com"
  end

  # This will use the User class (Admin would have been guessed)
  factory :admin, class: User do
    email "jennyndaly@gmail.com"
  end
end