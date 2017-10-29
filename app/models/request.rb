class Request < ApplicationRecord
  has_and_belongs_to_many :tags
  has_many :offers
  belongs_to :user
end
