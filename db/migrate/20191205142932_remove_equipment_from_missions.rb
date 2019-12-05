class RemoveEquipmentFromMissions < ActiveRecord::Migration[5.2]
  def change
    remove_column :missions, :equipment
  end
end
