class CreateAstronauts < ActiveRecord::Migration[7.0]
  def change
    create_table :astronauts do |t|
      t.string :name
      t.integer :age
      t.boolean :space_verteran

      t.timestamps
    end
  end
end
