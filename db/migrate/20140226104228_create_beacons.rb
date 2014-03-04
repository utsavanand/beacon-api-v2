class CreateBeacons < ActiveRecord::Migration
  def change
    create_table :beacons do |t|
      t.string :uid
      t.string :title
      t.string :image
      t.string :thumbImage
      t.text :beaconDesc
      t.timestamps
    end
  end
end
