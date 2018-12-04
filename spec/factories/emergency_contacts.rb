FactoryBot.define do
  factory :emergency_contact do
    user { nil }
    first_name { "MyString" }
    last_name { "MyString" }
    relation { "MyString" }
    cell_phone { "MyString" }
    last_notified { "2018-12-04 14:59:23" }
  end
end
