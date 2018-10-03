class Vote < ApplicationRecord
  belongs_to :item
  belongs_to :issue
  belongs_to :user
end
