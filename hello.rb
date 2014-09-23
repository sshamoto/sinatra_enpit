require 'sinatra'

get '/' do
  "Hello World!"
end

get '/aiit' do
  "Welcome to AIIT!"
end

set(:probability) { |value| condition { rand <= value } }
get '/practice', :probalibity => 0.1 do
  "Lucky day!"
end
get '/practice' do
  "Unlucky day!"
end
