require 'nokogiri'
require 'open-uri'
require 'pry'

doc = Nokogiri::HTML(open('https://www.beyonce.com/album/dangerously-in-love/lyrics/'))

doc.css('p').each do |paragraph|
  p paragraph.to_s
end

  


