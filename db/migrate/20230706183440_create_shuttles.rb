class CreateShuttles < ActiveRecord::Migration[7.0]
  def change
    create_table :shuttles do |t|
      t.string :name
      t.boolean :in_service
      t.integer :year_built

      t.timestamps
    end
  end
end
