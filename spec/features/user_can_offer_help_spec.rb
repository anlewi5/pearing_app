require 'rails_helper'

describe "user creates offer" do
  let(:default_user) { create(:user, id: 1) }
  let(:help_requester) { create(:user, id: 2)}

  scenario "user offers help with request" do
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(default_user)
    create(:request, user_id: 1)

    visit requests_path

    click_on "Offer Help"
    
    expect(page).to have_content("I can help!")
  end
end
