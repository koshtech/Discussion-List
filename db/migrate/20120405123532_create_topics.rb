class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :title, :limit => 80
      t.text :text

      t.timestamps
    end
  end
end
