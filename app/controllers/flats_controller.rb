require "open-uri"

class FlatsController < ApplicationController
  FLATS_URL = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"

  def index
    @flats = JSON.parse(URI.open(FLATS_URL).read)
  end

  def show
    @flats = JSON.parse(URI.open(FLATS_URL).read)
    @flat = @flats.select { |flat| flat["id"] == params["id"].to_i }.first
    # flat_array = @flats.select do |flat|
    #   flat["id"] == params["id"].to_i
    # end
    # @flat = flat_array.first
  end
end
