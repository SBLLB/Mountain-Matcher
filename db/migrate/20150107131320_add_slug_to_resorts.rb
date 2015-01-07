class AddSlugToResorts < ActiveRecord::Migration
  def change
    add_column :resorts, :slug, :string
    add_index :resorts, :slug
  end
end
