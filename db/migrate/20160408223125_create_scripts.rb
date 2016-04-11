class CreateScripts < ActiveRecord::Migration
  def change
    create_table :scripts do |t|
      t.integer :question_id
      t.integer :sequence
      t.string :phrase
      t.string :code

      t.timestamps
    end
  end
end
