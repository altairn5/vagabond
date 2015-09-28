class AddCitiesToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :cities_id, :integer
  end
end
