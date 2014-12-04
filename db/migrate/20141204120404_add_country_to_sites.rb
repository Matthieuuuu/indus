class AddCountryToSites < ActiveRecord::Migration
  def change
    add_column :sites, :country, :string
  end
end
