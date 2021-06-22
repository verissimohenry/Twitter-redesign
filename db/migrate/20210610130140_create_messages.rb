class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.bigint :send_user_id
      t.bigint :receive_user_id
      t.string :text
      t.bigint :conversation_id

      t.timestamps
    end
  end
end
