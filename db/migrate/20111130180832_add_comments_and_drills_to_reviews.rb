class AddCommentsAndDrillsToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :overall_comments, :text
    add_column :reviews, :suggested_drills, :text
  end
end
