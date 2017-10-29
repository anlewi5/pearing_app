require 'rails_helper'

describe "User visits tags index page" do
  context "as admin" do
    it "allows admin to see all tags" do
	   admin = create(:admin)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

      visit admin_tags_path
      expect(page).to have_content("Available Tags:")
    end
  end

  context "as default user" do
    it 'does not allow default user to see admin tags index' do
      user = create(:user)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
      visit admin_tags_path
      expect(page).to_not have_content("Available Tags:")
      expect(page).to have_content("The page you were looking for doesn't exist.")
    end
  end
end
