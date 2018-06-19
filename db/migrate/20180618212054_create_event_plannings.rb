class CreateEventPlannings < ActiveRecord::Migration[5.2]
  def change
    create_table :event_plannings do |t|
      t.string :date
      t.string :name
      t.string :current_savings
      t.string :goal_amount
      t.string :amount_needed
      t.integer :user_id

      t.timestamps
    end
  end
end
