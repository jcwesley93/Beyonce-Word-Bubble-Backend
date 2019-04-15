require 'nokogiri'
require 'open-uri'
require 'pry'

doc = Nokogiri::HTML(open('https://www.beyonce.com/album/lemonade-visual-album/lyrics/'))

doc.css('p').each do |paragraph|
  p paragraph.to_s
end

  


