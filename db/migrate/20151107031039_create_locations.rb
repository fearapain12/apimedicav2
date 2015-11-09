class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.float 'latitude', :null => false, :limit => 53
      t.float 'longitude', :null => false, :limit => 53
      t.string 'name'

      t.timestamps null: false
    end
  end
end
