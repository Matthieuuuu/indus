class RemovePictureFileSizeFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :picture_file_size, :integer
  end
end
