class ChangeEventsCategory < ActiveRecord::Migration[6.0]
  def up
    change_table :events do |t|
      t.remove :category
    end

    change_table :events do |t|
      t.integer :category
    end
  end
end
