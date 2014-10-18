class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :name
      t.string :code
      t.string :status

      t.timestamps null: false
    end
  end
end
