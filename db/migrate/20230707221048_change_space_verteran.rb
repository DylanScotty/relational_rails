class ChangeSpaceVerteran < ActiveRecord::Migration[7.0]
  def change
    rename_column :astronauts, :space_verteran, :space_veteran
  end
end
