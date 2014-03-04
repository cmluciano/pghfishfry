require 'rubygems'
require 'sinatra'
require 'yaml'
require 'rack-google-analytics'

get '/' do
    erb :index
end

get '/about' do
  @title = 'About Awesome Site'
  erb :about
end

get '/fry/:location' do
  file = YAML::load_file(File.join(__dir__,'data/frys.yml'))
  @fry=file[params[:location]]
  erb :fry
end
