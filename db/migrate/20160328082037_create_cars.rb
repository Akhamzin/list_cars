class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :name
      t.string :number
      t.string :pts
      t.date :pts_date

      t.timestamps null: false
    end
  end
end
