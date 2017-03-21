class CreateExamtimings < ActiveRecord::Migration[5.1]
  def change
    create_table :examtimings do |t|
      t.datetime :time
      t.string :file
      t.references :examscheduleset, index: true, foreign_key: true
      t.timestamps
    end
  end
end
