require 'rubygems'
require 'sinatra'
require_relative './Main.rb'
@textInHTML = "" #initialises the user input String (either URL or album/artist)

mainMethod = Main.new #creates main object


    get '/' do
      erb :index
    end

    post '/' do
      print "#{params[:albumArtist]}"
      getUserInput(params[:albumArtist])
      @testArray = mainMethod.startMain(params[:albumArtist])

      #@testArray = [["World", 5], ["Test", 1], ["Hello", 3]]

      erb :index
    end

#
def getUserInput (input) #the users input is stored as variable $textInHTML
  $textInHTML = "#{input}"
  erb :index
end
