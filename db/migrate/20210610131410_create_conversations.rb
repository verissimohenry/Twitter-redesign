class CreateConversations < ActiveRecord::Migration[6.1]
  def change
    create_table :conversations do |t|
      t.bigint :user_id
      t.bigint :other_user_id

      t.timestamps
    end
  end
end
