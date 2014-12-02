class AddSiteReferenceToStays < ActiveRecord::Migration
  def change
    add_reference :stays, :site, index: true
  end
end
