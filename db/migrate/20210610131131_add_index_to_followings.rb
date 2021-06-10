class AddIndexToFollowings < ActiveRecord::Migration[6.1]
  def change
    add_index :followings, :follower_id
    add_index :followings, :user_id
  end
end
