class RelationshipsAndRenames < ActiveRecord::Migration[7.1]
  def change
    rename_column :answers, :who, :created_by
    add_reference :answers, :question, foreign_key: false

    add_column :questions, :option1, :string
    add_column :questions, :option2, :string
  end
end
