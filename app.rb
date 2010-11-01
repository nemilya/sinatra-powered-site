require 'rubygems'
require 'sinatra'

set :public, "./public"

before do 
  @site_layout = :'page/main'

  @menu = []
  @menu << ['/', 'Home']
  @menu << ['/about', 'About']
  @menu << ['/photos', 'Photos']
  @menu << ['/contact', 'Contact']
end

get '/' do
  @title = 'Pure Sinatra-rb example'
  erb :index, :layout=> @site_layout
end

get '/about' do
  @title = 'About'
  erb :about, :layout=> @site_layout
end

get '/photos' do
  @title = 'Photos'
  erb :photos, :layout=> @site_layout
end

get '/contact' do
  @title = 'Contact'
  erb :contact, :layout=> @site_layout
end
