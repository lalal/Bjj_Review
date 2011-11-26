class AddColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :rank, :string
    add_column :users, :academy, :string
    add_column :users, :yrs_training, :string
  end
end
