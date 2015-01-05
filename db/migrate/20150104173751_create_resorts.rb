class CreateResorts < ActiveRecord::Migration
  def change
    create_table :resorts do |t|
      t.string :resort
      t.string :country
      t.string :nearest_airport
      t.integer :transfer_time
      t.integer :size_of_ski_domain

      t.timestamps
    end
  end
end
