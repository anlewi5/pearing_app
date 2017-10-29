FactoryBot.define do
  factory :user do
    sequence(:username) {|n| "user #{n}" }
    password "test"
    first_name "first"
    last_name "last"
    slack_handle "slack"
    cohort 1234
  end

  factory :admin, class: User do
    sequence(:username) {|n| "admin #{n}" }
    password "test"
    first_name "admin first"
    last_name "admin last"
    slack_handle "admin slack"
    cohort 1234
    role 1
  end
end
