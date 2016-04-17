require 'imdb'

class Search
  def initialize(text)
    Imdb::Search.new(text)
  end
end