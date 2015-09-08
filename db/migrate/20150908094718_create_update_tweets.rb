class CreateUpdateTweets < ActiveRecord::Migration
  def change
    create_table :update_tweets do |t|
      t.text :update_name
      t.text :status_id
      t.text :screen_name

      t.timestamps null: false
    end
  end
end
