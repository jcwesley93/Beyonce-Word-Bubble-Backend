class Album < ApplicationRecord
	has_many :songs

	def histogram
		histo = Hash.new
		songs.each do |song|
			histo = histo.merge(song.histogram)
		end
		histo
	end
end
