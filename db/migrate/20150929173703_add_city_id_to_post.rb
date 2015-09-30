class AddCityIdToPost < ActiveRecord::Migration
  def change 
  	change_column :posts, :body, :text
  	add_column :posts, :city_id, :integer
  end
end
