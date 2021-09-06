class AddOrganizerToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :organizer, :boolean, default: false
  end
end
