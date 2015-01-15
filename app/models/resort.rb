class Resort < ActiveRecord::Base

	include PgSearch
  pg_search_scope :search_by_nearest_airport, :against => :nearest_airport

	extend FriendlyId
	friendly_id :resort_name, use: :slugged

  def proportion_of(runs)
    runs.to_f / self.size_of_ski_domain.to_f * 100
  end

end
