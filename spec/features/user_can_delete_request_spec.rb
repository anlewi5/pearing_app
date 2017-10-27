require 'rails_helper'

describe "user deletes request" do
  let(:default_user) { create(:user, id: 1) }

  scenario "user deletes request" do
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(default_user)
    create(:request, id: 1, user_id: 1)

    visit user_requests_path(default_user)

    click_on "Delete Request"

    expect(page).not_to have_content("vault")
  end
end
