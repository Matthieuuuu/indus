class AddUserReferenceToStays < ActiveRecord::Migration
  def change
    add_reference :stays, :user, index: true
  end
end
