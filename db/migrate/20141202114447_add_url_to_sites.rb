class AddUrlToSites < ActiveRecord::Migration
  def change
    add_column :sites, :url, :string
  end
end
