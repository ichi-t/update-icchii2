class CreateUpdateTweets < ActiveRecord::Migration
  def change
    create_table :update_tweets do |t|
      t.string :text
      t.string :screen_id

      t.timestamps null: false
    end
  end
end
