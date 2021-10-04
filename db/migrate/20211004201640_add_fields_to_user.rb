class AddFieldsToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :username, :string
    add_column :users, :is_admin, :boolean
  end
end
