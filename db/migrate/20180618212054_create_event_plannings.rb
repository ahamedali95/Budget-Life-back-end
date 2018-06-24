class CreateEventPlannings < ActiveRecord::Migration[5.2]
  def change
    create_table :event_plannings do |t|
      t.datetime :date
      t.string :name
      t.string :current_savings
      t.string :goal_amount
      t.integer :user_id
    end
  end
end
