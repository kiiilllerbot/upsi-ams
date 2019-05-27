class CreateRegisters < ActiveRecord::Migration[5.2]
  def change
    create_table :registers do |t|
      t.integer :user_id
      t.text :description
      t.string :semester
      t.string :matric_id
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
