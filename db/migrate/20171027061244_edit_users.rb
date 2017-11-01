class EditUsers < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :name, :user_id
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
  end
end
