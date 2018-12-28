FactoryBot.define do
  factory :registration do
    race { nil }
    first_name { "MyString" }
    last_name { "MyString" }
    terms_accepted { false }
  end
end
