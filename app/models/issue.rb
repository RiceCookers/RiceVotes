class Issue < ApplicationRecord
  has_many :items
  has_many :votes
end
