class CreateQuestions < ActiveRecord::Migration[7.1]
  def change
    create_table :questions do |t|
      t.string :title
      t.string :option1
      t.string :option2
      t.timestamps
    end
  end
end
