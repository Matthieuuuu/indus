class FixColumnName < ActiveRecord::Migration
  def change
        rename_column :sites, :steet, :street
  end
end
