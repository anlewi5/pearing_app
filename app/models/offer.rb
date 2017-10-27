class Offer < ApplicationRecord
  belongs_to :user
  belongs_to :request

  def status_of_offer
    if status == 0
      "Pending"
    elsif status == 1
      "Accepted"
    else
      "Declined"
    end
  end
end
