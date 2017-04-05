class CreateAudios < ActiveRecord::Migration[5.1]
  def change
    create_table :audios do |t|
      t.string :description
      t.string :filename
      t.string :url
      t.references :user, index: true, foreign_key: true
      t.timestamps
    end
  end
end
