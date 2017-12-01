require 'sinatra'
require './config'

get '/' do
	erb :index
end

post '/tablero' do
	erb :tablero
end