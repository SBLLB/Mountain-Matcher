class ChangeResortNameField < ActiveRecord::Migration
  def change
  	rename_column :resorts, :resort, :resort_name
  end
end
