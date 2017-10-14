#String splitter. E.g. takes sentence and cuts the words out into an Array.
#Sentence is a String argument.
def stringSplit(sentence)
wordArray = []  #this array is to contain each of the words from the sentence (or paragraph, or entire music review)
wordArray = sentence.split(/\W+/)
puts wordArray #returns the first word.
end

#Code below demonstrates the function working, for instance, on a kanye review.
kanyeWest_Yeezus_Review = "absolute masterpiece, beautiful and at times very raw."
puts stringSplit(kanyeWest_Yeezus_Review)
