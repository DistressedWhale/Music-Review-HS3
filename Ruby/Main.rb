class Main
  require 'ReviewStripper'
  require 'Metacritic'
  m = Metacritic.new
  rs = ReviewStripper.new
  
  puts "Type in the metacritic URL of the page you want"
  reviewURL = gets
  
  words = m.getWebsite(reviewURL)
  words = rs.stringSplit(reviews)
  types = rs.getWordTypeArr(reviews)
  output = rs.stripNonAdjectives(words,types)
  output = rs.calcFrequency(output)

end