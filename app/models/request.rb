class Request < ApplicationRecord
  has_and_belongs_to_many :tags
  has_many :offers
  belongs_to :user

  def time
    start_time.strftime('%l:%M %p')
  end

  def date
    start_time.strftime('%b %-d')
  end
end
