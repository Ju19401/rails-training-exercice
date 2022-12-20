class CreateRents < ActiveRecord::Migration[7.0]
  def change
    create_table :rents do |t|
      t.string :name
      t.string :city
      t.string :disponibility
      t.integer :price_per_day
      t.integer :rating
      t.string :avatar_url

      t.timestamps
    end
  end
end
