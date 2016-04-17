require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'haml'
require 'imdb'

#require_relative 'lib/Search.rb'

set :haml, format: :html5
enable(:sessions)

get '/' do
  haml(:index)
end

post '/search_movies' do
  search = Imdb::Search.new(params[:movie_title])
  num_movies = search.movies.length
  if num_movies < 9
    redirect to '/'
  end

  @my_movies = []
  years = []
  counter = 0
  (0..num_movies-1).each do |m|
    if Imdb::Movie.new(search.movies[m].id).poster != nil
      @my_movies.push(search.movies[m])
      years.push(Imdb::Movie.new(search.movies[m].id).year)
      counter += 1
    end
    if counter >= 9
      break
    end
  end

  if @my_movies.length < 9
    redirect to '/'
  end

  @year_solve = years[rand(years.length)]
  haml(:show_movies)
end

get '/check_results/:year/:id' do
  if params[:year].to_i == Imdb::Movie.new(params[:id]).year
    haml(:ok)
  else
    haml(:ko)
  end
end
