class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :display_photo
      t.string :mapmaster_photo
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :status
      t.integer :volume
      t.string :type_of_trash
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
