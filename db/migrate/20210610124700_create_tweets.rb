class CreateTweets < ActiveRecord::Migration[6.1]
  def change
    create_table :tweets do |t|
      t.bigint :author_id
      t.string :text

      t.timestamps
    end
  end
end
