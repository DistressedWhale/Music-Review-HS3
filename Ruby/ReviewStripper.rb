require 'PearsonLongman-Dictionary'
class ReviewStripper
  include DictionaryLookup
  def getWordType(word)
    return DictionaryLookup::Base.define(word).first.part_of_speech
  end
end
puts ReviewStripper.new.getWordType("Hello")