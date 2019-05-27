class CreateBugs < ActiveRecord::Migration[5.2]
  def change
    create_table :bugs do |t|
      t.integer :user_id
      t.text :message

      t.timestamps
    end
  end
end
