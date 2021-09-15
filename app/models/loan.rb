class Loan < ApplicationRecord
  belongs_to :member
  has_one :guarantor
end
