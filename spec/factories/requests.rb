FactoryBot.define do
  factory :request do
    title "Request Title"
    start_time "MyString"
    duration "MyString"
    location "vault"
    description "MyString"
    user
  end
end
