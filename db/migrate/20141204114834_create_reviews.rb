class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :content
      t.integer :rating
      t.references :stay, index: true

      t.timestamps
    end
  end
end
