class AddContextToReview < ActiveRecord::Migration
  def change
    add_column :reviews, :context, :text
  end
end
