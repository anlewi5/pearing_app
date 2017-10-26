require 'rails_helper'

describe "user edits request" do
  let(:default_user) { create(:user, id: 1) }

  scenario "user edits request" do
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(default_user)
    request = create(:request, id: 1, user_id: 1)

    visit user_requests_path(default_user)

    click_on "Edit Request"

    expect(current_path).to eq("users/#{default_user.id}/edit/#{request.id}")

    fill_in "request[title]", with: "edited title"

    click_on "Update"

    expect(current_path).to eq(user_requests(default_user))
    expect(page).to have_content("edited title")
    expect(page).to have_content("vault")
  end
end
