class CreateQuestions < ActiveRecord::Migration[7.1]
  def change
    create_table :questions do |t|
      t.string :title
      t.string :question
      t.string :created_by

      t.timestamps
    end
  end
end
