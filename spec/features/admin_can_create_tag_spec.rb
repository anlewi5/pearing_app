require 'rails_helper'

describe "admin creates tag" do
  let(:admin_user) { create(:admin, id: 1) }

  scenario "admin creates tag" do
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin_user)

    visit root

    click_on "Create New Tag"
    expect(current_path).to eq(new_tag_path)

    fill_in "tag[title]", with: "tag"

    click_on "Create Tag"

    expect(page).to have_content("You have created: tag")
  end
end
