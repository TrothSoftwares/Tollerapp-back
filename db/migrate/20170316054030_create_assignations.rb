class CreateAssignations < ActiveRecord::Migration[5.1]
  def change
    create_table :assignations do |t|
      t.string :day
      t.datetime :time
      t.references :scheduleset, index: true, foreign_key: true
      t.timestamps
    end
  end
end
