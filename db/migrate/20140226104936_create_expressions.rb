class CreateExpressions < ActiveRecord::Migration
  def change
    create_table :expressions do |t|
      t.string :endptType
      t.string :endptValue
      t.string :expTitle
      t.string :expDesc
      t.string :expLink

      t.timestamps
    end
  end
end
