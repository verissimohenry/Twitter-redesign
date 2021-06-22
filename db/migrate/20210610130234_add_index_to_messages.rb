class AddIndexToMessages < ActiveRecord::Migration[6.1]
  def change
    add_index :messages, :conversation_id
    add_index :messages, :receive_user_id
    add_index :messages, :send_user_id
  end
end
