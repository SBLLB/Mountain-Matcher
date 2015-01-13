class AddApresSkiAndBeginnerRatingToResorts < ActiveRecord::Migration
  def change
  	add_column :resorts, :beginner_rating, :string
    add_column :resorts, :apres_ski_rating, :integer
  end
end
