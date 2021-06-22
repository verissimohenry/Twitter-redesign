class AddColumnsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :username, :string
    add_index :users, :username, unique: true
    add_column :users, :profile, :string, default: 'https://hajiri.co/uploads/no_image.jpg'
    add_column :users, :cover, :string, default: 'https://i.stack.imgur.com/y9DpT.jpg'
  end
end
