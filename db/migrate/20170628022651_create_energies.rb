class CreateEnergies < ActiveRecord::Migration[5.0]
  def change
    create_table :energies do |t|
      t.string :location
      t.string :measurement
      t.string :year
      t.float :amount

      t.timestamps
    end
  end
end
