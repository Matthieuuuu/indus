class AddColumnUrlPicutreToSites < ActiveRecord::Migration
  def change
    add_column :sites, :picture_url, :string
  end
end
