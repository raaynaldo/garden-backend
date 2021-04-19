class CreateGoals < ActiveRecord::Migration[6.1]
  def change
    create_table :goals do |t|
      t.integer :user_id
      t.text :task
      t.boolean :is_done

      t.timestamps
    end
  end
end
