class Contribution < ApplicationRecord
  belongs_to :member
  validates :contribution, presence: true
  validates :date_of_payment, presence: true
end
