class Member < ApplicationRecord
    has_many :contributions, dependent: :delete_all
    has_one :loan, through: :contributions

    validates_associated :contributions
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email, presence: true
    validates :phone, presence: true
    validates :DOB, presence: true
end
