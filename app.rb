require 'sinatra'


get '/'  do 
	erb :index
end

get '/about' do
	@name = 'Oggi'
	erb :about

end


get '/posts' do
@posts = ['my first post', 'my second post', 'my third post']

	erb :posts
end


get '/search' do
@search_term = params[:search]
p params
erb :search
end

get '/login'  do
	if params[:password] == '1234'
		redirect '/profile'
	else
		erb :login
	end
end

get '/profile' do
	erb :profile
end