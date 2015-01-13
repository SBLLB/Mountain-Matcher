class AddSkiPassCostAndOffPisteRatingToResorts < ActiveRecord::Migration
  def change
  	add_column :resorts, :off_piste_rating, :integer
    add_column :resorts, :cost_of_pass, :decimal
  end
end
