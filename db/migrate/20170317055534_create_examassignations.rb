class CreateExamassignations < ActiveRecord::Migration[5.1]
  def change
    create_table :examassignations do |t|
      t.datetime :time
      t.string :file
      t.references :examscheduleset, index: true, foreign_key: true
      t.timestamps
    end
  end
end
