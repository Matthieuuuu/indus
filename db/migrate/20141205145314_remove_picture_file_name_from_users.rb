class RemovePictureFileNameFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :picture_file_name, :string
  end
end
