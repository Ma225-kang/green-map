class AddStatusToMissions < ActiveRecord::Migration[5.2]
  def change
    remove_column :missions, :status
    add_column :missions, :status, :string, default: "planned"
  end
end
