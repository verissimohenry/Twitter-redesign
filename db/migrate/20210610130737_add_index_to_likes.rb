class AddIndexToLikes < ActiveRecord::Migration[6.1]
  def change
    add_index :likes, :tweet_id
    add_index :likes, :user_id
  end
end
