class Offer < ApplicationRecord
  belongs_to :user
  belongs_to :request

  enum status: ["Pending", "Accepted", "Declined"]
end
