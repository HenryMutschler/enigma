class AddCoordsToEvent < ActiveRecord::Migration[6.0]
  def change
    change_table :events do |t|
      t.float :latitude
      t.float :longitude
    end
  end
end
