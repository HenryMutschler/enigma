class AddPictureUrlToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :picture_url, :string
  end
end
