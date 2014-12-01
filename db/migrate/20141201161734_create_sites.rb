class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.float :daily_price
      t.string :title
      t.text :description
      t.string :category
      t.boolean :available
      t.references :user, index: true
      t.float :lat
      t.float :lng
      t.string :steet
      t.string :city
      t.integer :zip_code

      t.timestamps
    end
  end
end
