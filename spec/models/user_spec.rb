require 'rails_helper'

describe User do
  describe "user roles" do
    it "they can be created as a default user" do
      user = User.create(username: "user",
                         password: "password",
                         role: 0
                        )

      expect(user).to be_valid
      expect(user.role).to eq("default")
      expect(user.default?).to be_truthy
    end

    it "they can be created as an admin" do
      user = User.create(username: "user",
                         password: "password",
                         role: 1
                        )

      expect(user).to be_valid
      expect(user.role).to eq("admin")
      expect(user.admin?).to be_truthy
    end

    it "they are created as default user by default" do
      user = User.create(username: "user",
                         password: "password",
                        )

      expect(user).to be_valid
      expect(user.role).to eq("default")
      expect(user.default?).to be_truthy

      user.admin!

      expect(user.role).to eq("admin")

      user.default!

      expect(user.role).to eq("default")
    end

  end
end
