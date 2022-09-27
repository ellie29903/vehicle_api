class CreateVehicles < ActiveRecord::Migration[6.1]
  def change
    create_table :vehicles do |t|
      # TODO: add device table field

      t.timestamps
    end
  end
end
