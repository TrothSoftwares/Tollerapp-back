class CreateMemberships < ActiveRecord::Migration[5.1]
  def change
    create_table :memberships do |t|
        t.integer :group_id
        t.integer :user_id
        t.boolean :owner
       t.timestamps
    end
    add_index :memberships  , [:group_id, :user_id]

  end
end
