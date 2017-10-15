require 'rubygems'
require 'sinatra'
$textInHTML = ""
    get '/' do
      erb :index
    end

    post '/' do
      print "#{params[:message]}"
      getUserInput(params[:message])
    end

    post '/' do
      erb :wordz
    end

#
def getUserInput (input)
  $textInHTML = "#{input}"
  erb :index
end
