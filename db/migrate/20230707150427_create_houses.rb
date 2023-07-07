class CreateHouses < ActiveRecord::Migration[7.0]
  def change
    create_table :houses do |t|
      t.string :name
      t.string :location
      t.text :description

      t.timestamps
    end
  end
end
