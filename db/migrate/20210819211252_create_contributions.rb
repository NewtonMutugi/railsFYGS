class CreateContributions < ActiveRecord::Migration[6.1]
  def change
    create_table :contributions do |t|
      t.integer :contribution
      t.date :date_of_payment
      t.references :member, null: false, foreign_key: true

      t.timestamps
    end
  end
end
