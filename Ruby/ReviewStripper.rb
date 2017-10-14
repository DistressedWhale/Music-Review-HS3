#ReviewStripper, integrated into a single class file by Sam Whale (From Code snippets by multiple group members)
require 'PearsonLongman-Dictionary'
require 'sort_alphabetical'

class ReviewStripper
    #<---------------------Code by Sam Whale--------------------------------------------->
    include DictionaryLookup
    def getWordType(word)
        begin
            DictionaryLookup::Base.define(word).first.part_of_speech #gets type of word
        rescue #error handling
            return 'invalid' #invalid is useful for debugging, and will be converted to a noun later anyway
        else
            return DictionaryLookup::Base.define(word).first.part_of_speech  
        end
    end

    def getWordTypeArr(a)
        out = []
        a.each_index do |x|
          out << getWordType(a[x])
        end
        return out
    end

    #<---------------------Code by Alex Hughes Davies------------------------------------>

    #String splitter. E.g. takes sentence and cuts the words out into an Array.
    #Sentence is a String argument.
    def stringSplit(s)
        wordArray = []  #this array is to contain each of the words from the sentence
        wordArray = s.split(/\W+/)
        return wordArray
    end

    #<--------------------Code by Alex Shmerg Schudel, revised by Sam Whale--------------->
    #Words - The original words (After Stringsplit)
    #Types - A corresponding array of the types of the words in the 'Words' Array (noun, adjective etc)
    #Finds the adjectives, strips out other types to Null

    #Puts the adjectives from Words in an array
    def stripNonAdjectives(words,types)
        outputList = []
        # method_WordTypes(types)
        types.each_index do |i|
            outputList << words[i] if types[i] == 'adjective'
        end
        return outputList
    end

    #counts frequency, returns word followed by the frequency in an array (overall array is 2d)
    def calcFrequency(a) #v1 by alex, v2 by Sam Whale
        frequency = [[]] #2d array for the output
        wordsAlreadyPicked = [] #array of the words already counted
        counter = 0
        a.each_index do |x| #for each word
            if ([a[x]] & (wordsAlreadyPicked)).empty? #If a[x] has not already been picked
                counter = a.count(a[x])
                frequency << [a[x],(counter)**(-1)] #pack up the word and the counter. **-1 does the weighting.
                wordsAlreadyPicked << a[x]
            end 
        end
        return frequency
    end
end
#<------------------------------main-------------------------------------------------->
r = ReviewStripper.new
words = 'Songs this lush dont necessarily demand lyrical complexity. In fact, the pop songs that stick often work with simple premises expanded to monumental dimensions by heady production.' #This is what makes, for example, Carly Rae Jepsens songs so satisfying and memorable—they hone in on a single feeling, a stable concept that gives you something to hang onto when its soundtrack surges through the roof.'

words = r.stringSplit(words)

types = r.getWordTypeArr(words)

output = r.stripNonAdjectives(words,types)

output = r.calcFrequency(output)
