class User < ApplicationRecord
  has_secure_password
  has_many :requests
  has_many :offers

  validates :username, presence: true, uniqueness: true

  enum role: ["default", "admin"]
end
