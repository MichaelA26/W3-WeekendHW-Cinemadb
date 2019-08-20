require('sinatra')
require('sinatra/reloader')

require_relative('./models/film')
also_reload('./models/*')

get '/' do
  p "LADS LADS LADS."
end

get '/films' do
  @films = Film.all
  erb(:films)
end

get '/films/:film_id' do
  @films = Film.find_by_id(params[:film_id])
  erb(:film_id)
end

# get '/about' do
#   @price = Film.list_film_price
#   erb(:about)
# end
#
# get '/:about' do
#   @price = Film.all
#
#   params[:about]
# end

# get '/films' do
#   films = Film.list_film_names()
# end
