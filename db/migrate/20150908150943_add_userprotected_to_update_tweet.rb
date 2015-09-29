class AddUserprotectedToUpdateTweet < ActiveRecord::Migration
  def change
    add_column :update_tweets, :user_protected, :boolean
  end
end
