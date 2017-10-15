require 'rubygems'
require 'sinatra'
require_relative './Main.rb'
$textInHTML = "" #initialises the user input String (either URL or album/artist)
$cloudOne = [] #initialises the array

mainMethod = Main.new #creates main object


    get '/' do
      erb :index
    end

    post '/' do
      print "#{params[:albumArtist]}"
      getUserInput(params[:albumArtist])
      resultArray = mainMethod.startMain(params[:albumArtist])
      $cloudOne[0] = ["Hello", 14]
      #erb :index
    end

#
def getUserInput (input) #the users input is stored as variable $textInHTML
  $textInHTML = "#{input}"
  erb :index
end

#def putIntoCloud(arrayName) #
 #essentially makes it so the array of adjectives can be used in the HTML
#end
