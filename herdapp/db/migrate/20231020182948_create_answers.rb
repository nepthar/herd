class CreateAnswers < ActiveRecord::Migration[7.1]
  def change
    create_table :answers do |t|
      t.string :who
      t.float :value

      t.timestamps
    end
  end
end
