class AddIndicesToUsers < ActiveRecord::Migration[5.1]
  def change
    add_index :users, :user_id, unique: true
    add_index :users, :email, unique: true
  end
end
