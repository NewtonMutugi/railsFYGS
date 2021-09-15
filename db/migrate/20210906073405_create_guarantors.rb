class CreateGuarantors < ActiveRecord::Migration[6.1]
  def change
    create_table :guarantors do |t|
      t.string :guarantor_name
      t.integer :loaner_id
      t.integer :guaranteed_amount
      t.references :loan, null: false, foreign_key: true

      t.timestamps
    end
  end
end
