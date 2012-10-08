# Read about factories at https://github.com/thoughtbot/factory_girl

# FactoryGirl.define :user do
#   name 'Test User'
#   email 'example@example.com'
#   password 'please'
# end
FactoryGirl.define do
  factory :user do
    name 'Test User'
    email 'example@example.com'
    password 'please'
    # required if the Devise Confirmable module is used
    # confirmed_at Time.now
  end
end
