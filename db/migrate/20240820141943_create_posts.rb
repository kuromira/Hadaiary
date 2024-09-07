class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.date :day
      t.string :weather
      t.string :condition
      t.time :sleep_time
      t.text :skin_care
      t.text :food
      t.text :happy_event
      t.text :sad_event
      t.string :hashtag

      t.timestamps
    end
  end
end
