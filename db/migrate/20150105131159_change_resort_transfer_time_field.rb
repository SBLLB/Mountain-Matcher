class ChangeResortTransferTimeField < ActiveRecord::Migration
  def change
  	change_column :resorts, :transfer_time, :string
  end
end
