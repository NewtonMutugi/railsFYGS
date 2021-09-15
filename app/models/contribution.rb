class Contribution < ApplicationRecord
  belongs_to :member
  validates :contribution, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 500 }
  validates :date_of_payment, presence: true
end
