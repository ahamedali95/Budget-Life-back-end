class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.string :amount
      t.string :date
      t.text :description
      t.string :typed
      t.integer :user_id
      t.integer :category_id

      t.timestamps
    end
  end
end
