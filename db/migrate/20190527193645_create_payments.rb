class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.integer :user_id
      t.string :matric_id
      t.string :amount
      t.text :description
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
