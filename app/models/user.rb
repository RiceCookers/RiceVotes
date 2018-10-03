class User < ApplicationRecord
  has_many :votes
  has_many :issues, through: :votes, source: :issue, foreign_key: :issue_id
end
