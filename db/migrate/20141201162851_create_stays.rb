class CreateStays < ActiveRecord::Migration
  def change
    create_table :stays do |t|
      t.datetime :begin_date
      t.datetime :end_date
      t.datetime :response_at
      t.boolean :accepted

      t.timestamps
    end
  end
end
