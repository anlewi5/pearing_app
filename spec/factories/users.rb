FactoryBot.define do
  factory :user do
    username "user"
    password "test"
    first_name "first"
    last_name "last"
    slack_handle "slack"
    cohort 1234
  end
end
