class CreateTargets < ActiveRecord::Migration[6.0]
  def change
    create_table :targets do |t|
      t.text :target,            null: false
      t.references :user,        foreign_key:true
      t.timestamps
    end
  end
end
