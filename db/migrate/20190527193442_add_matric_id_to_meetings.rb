class AddMatricIdToMeetings < ActiveRecord::Migration[5.2]
  def change
    add_column :meetings, :matric_id, :string
  end
end
