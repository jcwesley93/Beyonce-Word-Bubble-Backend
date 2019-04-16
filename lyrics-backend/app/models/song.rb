class Song < ApplicationRecord
  belongs_to :album

  def histogram
  	histogram = Hash.new(0)
  	lines = lyrics.split("\n")
  	lines.each do |line|
  		words = line.split(" ")
  		words.each do |word|
  			histogram[word.gsub(/[^0-9a-z ]/i, '')] = histogram[word.gsub(/[^0-9a-z ]/i, '')] + 1
  		end
  	end
  	histogram
  end
end
