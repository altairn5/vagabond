class CreateCityUsers < ActiveRecord::Migration
  def change
    create_table :city_users do |t|
      t.integer :cities_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
