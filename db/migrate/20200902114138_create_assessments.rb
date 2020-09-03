class CreateAssessments < ActiveRecord::Migration[6.0]
  def change
    create_table :assessments do |t|
      t.integer :checkbox1
      t.integer :checkbox2
      t.integer :checkbox3
      t.integer :checkbox4
      t.integer :checkbox5
      t.integer :checkbox6
      t.integer :checkbox7
      t.integer :checkbox8
      t.integer :checkbox9
      t.integer :checkbox10
      t.timestamps
    end
  end
end
