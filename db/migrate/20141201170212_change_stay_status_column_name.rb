class ChangeStayStatusColumnName < ActiveRecord::Migration
  def change
    remove_column :stays, :accepted
    add_column :stays, :status, :string
  end
end