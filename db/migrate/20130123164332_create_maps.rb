class CreateMaps < ActiveRecord::Migration
  def change
    create_table :maps do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :country
      t.float :latitude
      t.float :longitude
      t.boolean :gmaps

      t.timestamps
    end
  end
end
