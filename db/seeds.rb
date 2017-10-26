User.destroy_all
Request.destroy_all

USERS_FIRST= ["Anna", "Matt", "Hel", "Pass"]
USERS_LAST = ["L", "Lewis", "Kitten", "Pupper"]
REQUESTS = ["Help", "Why", "Nooo", "Please Send Help"]
LOCATIONS = ["Vault", "Classroom", "Kitchen", "T"]

USERS_FIRST.each do |name|
  user = User.create!(username: "user",
                      password: "pass",
                      first_name: name,
                      last_name: USERS_LAST.sample,
                      slack_handle: "slack",
                      cohort: rand(100)
                     )
  puts "Created #{user.first_name}"
  4.times do |num|
    user.requests.create!(title: REQUESTS.sample, day: Date.new(2017), start_time: Time.now, duration: rand(100), location: LOCATIONS.sample, description: "need help meow")
    puts "Created #{user.requests[num].title}"
  end
end
