class AddShuttlesToAstronauts < ActiveRecord::Migration[7.0]
  def change
    add_reference :astronauts, :shuttle, null: false, foreign_key: true
  end
end
