class AddEasyIntHardKmOfRunsToResorts < ActiveRecord::Migration
  def change
  	add_column :resorts, :easy_runs_km, :integer
    add_column :resorts, :medium_runs_km, :integer
    add_column :resorts, :hard_runs_km, :integer
  end
end
