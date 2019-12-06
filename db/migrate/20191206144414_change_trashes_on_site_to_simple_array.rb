class ChangeTrashesOnSiteToSimpleArray < ActiveRecord::Migration[5.2]
  def change
    remove_column :places, :trashes_on_site
    add_column :places, :trashes_on_site, :string, array: true, default: []
  end
end
