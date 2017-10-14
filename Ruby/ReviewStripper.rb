require 'PearsonLongman-Dictionary'
require 'sort_alphabetical'

class ReviewStripper
    #<---------------------Code by Sam Whale--------------------------------------------->
    include DictionaryLookup
    def getWordType(word)
        return DictionaryLookup::Base.define(word).first.part_of_speech #gets type of word
    end

    #<---------------------Code by Alex Hughes Davies------------------------------------>

    #String splitter. E.g. takes sentence and cuts the words out into an Array.
    #Sentence is a String argument.
    def stringSplit(sentence)
        wordArray = []  #this array is to contain each of the words from the sentence
        wordArray = sentence.split(/\W+/)
        return wordArray
    end

    #<--------------------Code by Alex Shmerg Schudel--------------------------------------->
    #Words - The original words (After Stringsplit)
    #Types - A corresponding array of the types of the words in the 'Words' Array (noun, adjective etc)
    #Finds the adjectives, strips out other types to Null
    def method_WordTypes(types) #Strips out the non-adjective words, leaving only "null" and "Adjective"
        types.each_index do |i|
            types[i] = 'null' if types[i] != 'adjective'
        end
        return types #Originally was "return y"
    end

    #Puts the adjectives from Words in an array
    def method_List(words,types)
        outputList = []
        # method_WordTypes(types)
        types.each_index do |i|
            outputList << words[i] if types[i] == 'adjective'
        end
        return outputList
    end

    #orders list alphabetically
    def method_Sort(a)
        outputList = []
        outputList = a.sort_alphabetical
        return outputList
    end

    #counts frequency
=begin   def method_Frequency
        list = method_Sort
        frequency = [[]]
        list.each_index do |i|
            frequency_word = []
            list.each_index do |i + 1|
                if list[i] == list[i + 1]
                    k+=1
                else
                    frequency_word = [list[i], k]
                    k = 0
                end
                frequency[i] = frequency_word
            end
            return frequency
        end
    end
=end
    def method_Weight(method_frequency)
        weight = [[]]
        outputList = method_Frequency
        outputList.each_index do |i|
            weight_2 = outputList_[2]**(-1)
            weight[i] = [[outputList[i], weight_2]]
        end
        return weight
    end
end
#<------------------------------main-------------------------------------------------->

w = ['z','f','e','d','c']
t = ["adjective","null","null","null","adjective"]
r = ReviewStripper.new
puts r.method_List(w,t)
