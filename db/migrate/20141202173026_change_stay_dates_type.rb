class ChangeStayDatesType < ActiveRecord::Migration
  def change
    remove_column :stays, :begin_date
    remove_column :stays, :add_date
    add_column :stays, :begin_date, :date
    add_column :stays, :begin_date, :date
  end
end
