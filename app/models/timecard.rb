class Timecard < ActiveRecord::Base

	has_many :hour_counts
	belongs_to :user

end
