class CreateDiaries < ActiveRecord::Migration[6.0]
  def change
    create_table :diaries do |t|
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
      t.date :date,              null: false
      t.references :user,        foreign_key:true
      t.timestamps
    end
  end
end
