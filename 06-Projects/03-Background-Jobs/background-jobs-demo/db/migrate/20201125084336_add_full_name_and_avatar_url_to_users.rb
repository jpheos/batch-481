class AddFullNameAndAvatarUrlToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :full_name, :string
    add_column :users, :avatar_url, :string
  end
end