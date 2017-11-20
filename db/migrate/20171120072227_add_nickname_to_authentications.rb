class AddNicknameToAuthentications < ActiveRecord::Migration[5.1]
  def change
  	add_column :authentications, :nickname, :string

  end
end
