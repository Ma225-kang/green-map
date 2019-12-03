class RenameReferenceForPlaces < ActiveRecord::Migration[5.2]
  def change
    remove_reference :places, :user
    add_reference :places, :mapmaster, foreign_key: { to_table: :users }
  end
end
