class AddLoanToLoanType < ActiveRecord::Migration[6.1]
  def change
    add_reference :loan_types, :loan, null: false, foreign_key: true
  end
end
