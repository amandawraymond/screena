class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.string :answer
      t.integer :question_id
      t.integer :weight

      t.timestamps
    end
  end
end
