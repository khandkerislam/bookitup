FactoryBot.define do
 factory :user do
    email { Faker::Internet.email }
    password { Faker::Internet.password(min_length: 8) }
    password_confirmation { password }
    card_number { Faker::Internet.uuid }
    role { :patron }

    trait :librarian do
      role { :librarian }
    end
 end
end
