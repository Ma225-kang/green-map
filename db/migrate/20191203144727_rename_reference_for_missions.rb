class RenameReferenceForMissions < ActiveRecord::Migration[5.2]
  def change
    remove_reference :missions, :user
    add_reference :missions, :captaingreen, foreign_key: { to_table: :users }
  end
end
