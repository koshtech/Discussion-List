class AddColumnsDateToTopic < ActiveRecord::Migration
  def change
  	add_column :topics, :year, :integer
  	add_column :topics, :month, :integer
  	add_column :topics, :day, :integer
  end
end
