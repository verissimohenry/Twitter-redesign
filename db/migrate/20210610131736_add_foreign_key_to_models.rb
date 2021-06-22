class AddForeignKeyToModels < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key "conversations", "users"
    add_foreign_key "conversations", "users", column: "other_user_id"
    add_foreign_key "followings", "users"
    add_foreign_key "followings", "users", column: "follower_id"
    add_foreign_key "likes", "tweets"
    add_foreign_key "likes", "users"
    add_foreign_key "messages", "conversations"
    add_foreign_key "messages", "users", column: "receive_user_id"
    add_foreign_key "messages", "users", column: "send_user_id"
    add_foreign_key "tweets", "users", column: "author_id"
  end
end
