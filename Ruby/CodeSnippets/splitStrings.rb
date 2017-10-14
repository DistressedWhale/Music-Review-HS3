#  
# THIS CODE HAS BEEN INTEGRATED INTO REVIEWSTRIPPER.RB
#
#String splitter. E.g. takes sentence and cuts the words out into an Array.
#Sentence is a String argument.
def stringSplit(sentence)
wordArray = []  #this array is to contain each of the words from the sentence (or paragraph, or entire music review)
wordArray = sentence.split(/\W+/)
puts wordArray[0] #returns the first word.
end
