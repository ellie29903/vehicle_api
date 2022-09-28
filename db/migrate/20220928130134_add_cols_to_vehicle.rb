class AddColsToVehicle < ActiveRecord::Migration[6.1]
  def change
    add_column :vehicles, :make, :string
    add_column :vehicles, :model, :string
    add_column :vehicles, :year, :integer
    add_column :vehicles, :battery, :integer
    add_column :vehicles, :maxrange, :integer
  end
end
