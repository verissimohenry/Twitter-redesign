class AddIndexToConversations < ActiveRecord::Migration[6.1]
  def change
    add_index :conversations, :other_user_id
    add_index :conversations, :user_id
  end
end
