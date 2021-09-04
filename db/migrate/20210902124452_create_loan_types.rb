class CreateLoanTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :loan_types do |t|
      t.string :loan_type
      t.float :interest_rate
      t.integer :repayment_period

      t.timestamps
    end
  end
end
