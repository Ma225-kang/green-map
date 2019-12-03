class CreateMissions < ActiveRecord::Migration[5.2]
  def change
    create_table :missions do |t|
      t.date :date
      t.string :time_slot
      t.string :mapmaster_photo
      t.integer :participation_level
      t.string :status
      t.string :equipment
      t.references :user, foreign_key: true
      t.references :place, foreign_key: true

      t.timestamps
    end
  end
end
