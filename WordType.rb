  @Words = ['Hello', 'go', 'great', 'fabulous']
  @Types = ['noun', 'noun', 'adjective', 'adjective']

  def method_WordTypes
    Words.each_index do |i|
      Types[i] = 'null' if Types[i] != 'adjective'
    end
	return y
  end

  method_WordTypes(Words, Types)
  
  
  def method_List
	List = array.new
	method_WordTypes(Words, Types)
    Types.each_index do |i|
		list << Types[i] if Types[i] = 'adjective'
	end
	return list
  end