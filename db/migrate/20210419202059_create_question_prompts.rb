class CreateQuestionPrompts < ActiveRecord::Migration[6.1]
  def change
    create_table :question_prompts do |t|
      t.string :question
      t.integer :topic

      t.timestamps
    end
  end
end
