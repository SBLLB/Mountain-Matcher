class AddAltitudeToResorts < ActiveRecord::Migration
  def change
  	add_column :resorts, :altitude, :integer
  end
end
