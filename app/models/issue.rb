class Issue < ApplicationRecord
  has_many :items
  has_many :votes

  validates :title, :description, presence: true
end
