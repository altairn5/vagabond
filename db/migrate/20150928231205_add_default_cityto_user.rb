class AddDefaultCitytoUser < ActiveRecord::Migration
  def change
  	change_column_default(:users, :city_id, 1)
  end
end
