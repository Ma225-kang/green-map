class CreateCongratulations < ActiveRecord::Migration[5.2]
  def change
    create_table :congratulations do |t|
      t.references :place, foreign_key: true

      t.timestamps
    end
  end
end
