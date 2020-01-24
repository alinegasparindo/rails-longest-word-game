require 'open-uri'
require 'json'

class GamesController < ApplicationController

  def new
    key = ""
    10.times { key += ('a'..'z').to_a.sample.to_s }
    @letters = key
  end

  def score
    response = open("https://wagon-dictionary.herokuapp.com/#{params[:word]}")
    json = JSON.parse(response.read)
    result = ""
    if params[:word].chars.all? { |letter| params[:word].count(letter) <= params[:letter_list].count(letter) }
      if json['found']
        @result = "well done"
      else
        @result = "not an english word"
      end
    else
      @result = "not in the grid"
    end
  end
end

