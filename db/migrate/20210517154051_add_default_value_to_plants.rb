class AddDefaultValueToPlants < ActiveRecord::Migration[6.1]
  def change
    add_column :plants, :availability, :boolean
  end
end
