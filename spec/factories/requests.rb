FactoryBot.define do
  factory :request do
    title "Request Title"
    day "MyString"
    start_time "MyString"
    duration "MyString"
    location "vault"
    description "MyString"
    user nil
  end
end
