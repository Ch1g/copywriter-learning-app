class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.references :lesson, null: false, foreign_key: true
      t.text :description
      t.text :example

      t.timestamps
    end
  end
end
