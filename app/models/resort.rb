class Resort < ActiveRecord::Base
  def to_param
    "#{id} #{resort_name}".parameterize
  end
end
