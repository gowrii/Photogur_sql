class Picture < ActiveRecord::Base
	scope :newest_first, -> { order("created_at DESC")}
	scope :recent_pics, -> { newest_first.limit(5) }
end