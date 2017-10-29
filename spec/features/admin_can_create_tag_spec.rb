require 'rails_helper'

describe "admin creates tag" do
  let(:admin_user) { create(:admin) }

  scenario "admin creates tag" do
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin_user)

    visit tags_path

    click_on "Create New Tag"
    expect(current_path).to eq(new_tag_path)

    fill_in "tag[title]", with: "tag title"

    click_on "Create Tag"

    expect(page).to have_content("tag title")
  end
end
