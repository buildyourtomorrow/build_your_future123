class CreateIncomes < ActiveRecord::Migration
  def change
    create_table :incomes do |t|
      t.integer :amount
      t.integer :frequency
      t.date :start_date
      t.integer :savings
      t.string :description

      t.timestamps
    end
  end
end
