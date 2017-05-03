class CreateBackgroundimages < ActiveRecord::Migration[5.1]
  def change
    create_table :backgroundimages do |t|
      t.string :description
      t.string :filename
      t.string :url
      t.string :status ,default: 'inactive'
      t.timestamps
    end
  end
end
