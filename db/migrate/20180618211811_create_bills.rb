class CreateBills < ActiveRecord::Migration[5.2]
  def change
    create_table :bills do |t|
      t.datetime :date
      t.string :amount_due
      t.string :description
      t.integer :user_id
      t.integer :category_id

      t.timestamps
    end
  end
end
