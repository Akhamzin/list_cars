class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :name, :limit => 50
      t.string :number
      t.string :pts
      t.datetime :pts_date

      t.timestamps null: false
    end
  end
end
