class RemoveMatricIdFromMeetings < ActiveRecord::Migration[5.2]
  def change
    remove_column :meetings, :matric_id, :integer
  end
end
