class AddStringPictureToUsers < ActiveRecord::Migration
  def self
    change_table :users do |t|
      t.string :picture
    end
  end
end
