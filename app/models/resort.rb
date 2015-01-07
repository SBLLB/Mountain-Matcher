class Resort < ActiveRecord::Base
  extend FriendlyId
  friendly_id :resort_name, use: :slugged
end
