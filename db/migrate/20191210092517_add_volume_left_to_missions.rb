class AddVolumeLeftToMissions < ActiveRecord::Migration[5.2]
  def change
    add_column :missions, :volume_left, :integer
    add_column :missions, :mission_points, :integer
    remove_column :missions, :participation_level
    add_column :missions, :perceived_effort, :integer
  end
end
