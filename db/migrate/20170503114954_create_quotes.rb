class CreateQuotes < ActiveRecord::Migration[5.1]
  def change
    create_table :quotes do |t|
      t.text :quotetext
      t.string :author
      t.boolean :status , default: false
      t.timestamps
    end
  end
end
