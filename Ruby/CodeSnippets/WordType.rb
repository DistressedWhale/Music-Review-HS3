  require 'sort_alphabetical'
  
  @Words = ['Hello', 'go', 'great', 'fabulous']
  @Types = ['noun', 'noun', 'adjective', 'adjective']

  #Finds the adjectives
  def method_WordTypes
    Words.each_index do |i|
      Types[i] = 'null' if Types[i] != 'adjective'
    end
	return y
  end
  
  #Puts the adjectives in an array
  def method_List
	list = array.new
	method_WordTypes(Words, Types)
    Types.each_index do |i|
		list << Types[i] if Types[i] = 'adjective'
	end
	return list
  end
  
  #orders list
  def method_Sort(method_list)
	list = array.new
	list = method_List.sort_alphabetical
    return list
  end
  
  #counts frequency
  def method_Frequency
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
  
  def method_Weight(method_frequency)
    weight = [[]]
	list = method_Frequency
	list.each_index do |i|
	  weight_2 = list_[2]**(-1)
	  weight[i] = [[list[i], weight_2]
	 end
	return weight
	end