class AddUserdateToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :user_name , :string
    add_column :users, :user_icon , :string
    add_column :users, :user_introduction , :text
  end
end
