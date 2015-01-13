class ChangeColumnInResorts < ActiveRecord::Migration
  def change
  	change_column :resorts, :off_piste_rating, :string
  end
end
