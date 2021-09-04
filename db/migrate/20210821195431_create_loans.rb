class CreateLoans < ActiveRecord::Migration[6.1]
  def change
    create_table :loans do |t|
      t.string :loan_type
      t.date :date_borrowed
      t.integer :loan_amount
      t.references :member, null: false, foreign_key: true
      

      t.timestamps
    end
  end
end
