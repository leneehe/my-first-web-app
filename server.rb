require 'sinatra'

get '/' do
  redirect to('/home')
end

get '/home' do
  erb :index
end

get '/gallery' do
  redirect to('/portfolio')
end

get '/portfolio' do
  erb :gallery
end

get '/about_me' do
  @skills = ['git', 'HTML', 'CSS', 'Ruby']
  @interests = ['cats', 'art', 'music', 'films', 'coffee']
  erb :about
end

get '/favourites' do
  @fav_links = ['http://wwww.netflix.com', 'http://wwww.behance.net', 'http://www.youtube.com', 'http://lookbook.nu/', 'https://www.luisaviaroma.com']
  erb :links
end
