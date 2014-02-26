class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.string :question
      t.string :op1
      t.string :op2
      t.string :op3
      t.string :op4

      t.timestamps
    end
  end
end
