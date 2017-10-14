require 'wordcram'

Wordcram.draw do
	canvas do
		size 700, 700
	end
	
	from(' Alex is a cool guy and managed to get a word cloud working', :as => :text)
	
	save_to('output.png')
	
end