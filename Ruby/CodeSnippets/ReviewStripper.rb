#  
# THIS CODE HAS BEEN INTEGRATED INTO REVIEWSTRIPPER.RB
#
require 'PearsonLongman-Dictionary' #Main dictionary Gem

class ReviewStripper
  include DictionaryLookup
  
  def getWordType(word) #takes a string as input, returns the lookup of the type
    return DictionaryLookup::Base.define(word).first.part_of_speech
  end
  
end
puts ReviewStripper.new.getWordType("Hello")
