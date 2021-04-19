class CreateAnswerPrompts < ActiveRecord::Migration[6.1]
  def change
    create_table :answer_prompts do |t|
      t.integer :question_id
      t.integer :user_id
      t.text :answer

      t.timestamps
    end
  end
end
