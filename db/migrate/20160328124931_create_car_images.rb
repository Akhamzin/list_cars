class CreateCarImages < ActiveRecord::Migration
  def change
    create_table :car_images do |t|
      t.string :image_name
      t.integer :car_id

      t.timestamps null: false
    end
    add_index :car_images, :car_id
  end
end
