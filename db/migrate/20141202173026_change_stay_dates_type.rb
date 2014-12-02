class ChangeStayDatesType < ActiveRecord::Migration
  def change
    remove_column :stays, :begin_date
    remove_column :stays, :end_date
    add_column :stays, :begin_date, :date
    add_column :stays, :end_date, :date
  end
end