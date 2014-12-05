class RemovePictureContentTypeFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :picture_content_type, :string
  end
end
