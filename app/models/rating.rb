class Rating < ActiveRecord::Base
	belongs_to :corgi

	validates :corgi, presence: true
	validates :value, presence: true, inclusion: {in: 0..5}
end
