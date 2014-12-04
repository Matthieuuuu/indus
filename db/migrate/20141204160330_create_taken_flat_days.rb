class CreateTakenFlatDays < ActiveRecord::Migration
  def change
    create_table :taken_flat_days do |t|
      t.date :occupied_date
      t.references :site, index: true

      t.timestamps
    end
  end
end
