class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :postcode
      t.string :restaurant_name
      t.datetime :start_time
      t.datetime :end_time
      t.string :category
      t.string :event_name
      t.text :event_descritpion
      t.integer :price

      t.timestamps
    end
  end
end
