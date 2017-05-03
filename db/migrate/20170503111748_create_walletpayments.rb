class CreateWalletpayments < ActiveRecord::Migration[5.1]
  def change
    create_table :walletpayments do |t|
      t.references :user, index: true, foreign_key: true
      t.datetime :paymentdate
      t.decimal :amount ,  :precision => 8, :scale => 2 ,default:0
      t.decimal :previouswalletbalance ,  :precision => 8, :scale => 2 ,default:0
      t.decimal :afterwalletbalance ,  :precision => 8, :scale => 2 ,default:0
      t.string :paymentmethod
      t.string :refno
      t.string :remarks 
      t.timestamps
    end
  end
end
