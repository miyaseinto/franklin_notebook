class CreateDiaries < ActiveRecord::Migration[6.0]
  def change
    create_table :diaries do |t|
      t.integer :priority1,      null: false
      t.integer :priority2,      null: false
      t.integer :priority3,      null: false
      t.integer :priority4,      null: false
      t.integer :priority5,      null: false
      t.integer :priority6,      null: false
      t.integer :priority7,      null: false
      t.integer :priority8,      null: false
      t.integer :priority9,      null: false
      t.integer :priority10,     null: false
      t.string :taskbox1,        null: false
      t.string :taskbox2,        null: false
      t.string :taskbox3,        null: false
      t.string :taskbox4,        null: false
      t.string :taskbox5,        null: false
      t.string :taskbox6,        null: false
      t.string :taskbox7,        null: false
      t.string :taskbox8,        null: false
      t.string :taskbox9,        null: false
      t.string :taskbox10,       null: false
      t.text :diary,             null: false
      t.date :date,          null: false
      t.timestamps
    end
  end
end
