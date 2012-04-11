class CreateDelta < ActiveRecord::Migration
  def up
  	add_column :topics, :delta, :boolean, :default  => true, :null => false
  end

  def down
  	remove_column :topics, :delta
  end
end
