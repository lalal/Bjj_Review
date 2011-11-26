class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :state
      t.string :url

      t.timestamps
    end
  end
end
