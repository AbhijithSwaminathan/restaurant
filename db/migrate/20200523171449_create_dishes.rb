class CreateDishes < ActiveRecord::Migration[6.0]
  def change
    create_table :dishes do |t|
      t.string :name
      t.float :price
      t.boolean :isavailable
      t.string :description

      t.timestamps
    end
  end
end
