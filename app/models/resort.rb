class Resort < ActiveRecord::Base
	include PgSearch
  pg_search_scope :search_by_nearest_airport, :against => :nearest_airport
	extend FriendlyId
	friendly_id :resort_name, use: :slugged
end
