class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :name
      t.string :logo
      t.string :colorMajor
      t.string :colorMinor

      t.timestamps
    end
  end
end
