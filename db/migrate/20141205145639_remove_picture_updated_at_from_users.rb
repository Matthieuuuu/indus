class RemovePictureUpdatedAtFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :picture_updated_at, :datetime
  end
end
