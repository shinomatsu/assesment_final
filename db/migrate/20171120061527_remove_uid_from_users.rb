class RemoveUidFromUsers < ActiveRecord::Migration[5.1]
  def change
  	remove_column :users, :uid, :string
    remove_column :users, :provider, :string
  end
end
