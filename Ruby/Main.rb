class Main
  require_relative 'ReviewStripper'
  require_relative 'Metacritic'
  m = Metacritic.new
  rs = ReviewStripper.new
  
 # puts "Type in the metacritic URL of the page you want"
  reviewURL = "http://www.metacritic.com/music/yeezus/kanye-west"
  puts "scraped"
  words = m.getWebsite(reviewURL)
  words = rs.stringSplit(words)
  types = rs.getWordTypeArr(words)
  output = rs.stripNonAdjectives(words,types)
  output = rs.calcFrequency(output)

end