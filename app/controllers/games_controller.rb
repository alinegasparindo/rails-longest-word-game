class GamesController < ApplicationController
  def new
    key = ""
    10.times { key += ('a'..'z').to_a.sample.to_s }
    @grid = key
  end

  def score
  end
end


# require 'open-uri'
# require 'json'

# def generate_grid(grid_size)
#   key = ""
#   grid_size.times { key += ('a'..'z').to_a.sample.to_s }
#   return key
#   # TODO: generate random grid of letters
# end

# def validword?(attempt)
#   url = "https://wagon-dictionary.herokuapp.com/#{attempt}"
#   dic = open(url).read
#   something = JSON.parse(dic)
#   return something["found"]
# end

# def in_the_grid(attempt, grid)
#   if attempt.upcase.split('').all? { |i| grid.include? i }
#     return true
#   else
#     return false
#   end
# end


# def run_game(attempt, grid, start_time, end_time)

#   nh = {
#     time: end_time - start_time,
#     score: 0,
#     message: ""
#   }

#   if in_the_grid(attempt, grid) == false
#     nh[:message] = "Not in the grid."
#   elsif validword?(attempt) == false
#     nh[:message] = "not an english word"
#   elsif validword?(attempt) && in_the_grid(attempt, grid)
#     nh[:message] = "Well done!"
#     nh[:score] =+20 + attempt.length - nh[:time]
#   end

#   return nh
# end
