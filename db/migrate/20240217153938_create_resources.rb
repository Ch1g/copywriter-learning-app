class CreateResources < ActiveRecord::Migration[7.1]
  def change
    create_table :resources do |t|
      t.references :lesson, null: false, foreign_key: true
      t.string :name
      t.string :url, null: true
      t.text :content, null: true
      t.string :type

      t.timestamps
    end
  end
end
