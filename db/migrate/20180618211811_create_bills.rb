class CreateBills < ActiveRecord::Migration[5.2]
  def change
    create_table :bills do |t|
      t.datetime :due_date
      t.string :due_amount
      t.string :description
      t.integer :user_id
      t.integer :category_id

      t.timestamps
    end
  end
end
