class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :title
      t.text :noteDesc
      t.string :image
      t.string :thumbImage
      t.integer :noteType

      t.timestamps
    end
  end
end
