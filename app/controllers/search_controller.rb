class SearchController < ApplicationController
  def index
    render locals: {
      search_results: PhoenixSearch.new(params[:house])
    }
    # existing code
    # conn = Faraday.new(url: "https://www.potterapi.com/v1/") do |faraday|
    #   faraday.adapter Faraday.default_adapter
    # end
    #
    # response = conn.get("characters?key=#{ENV['HP_API_KEY']}&house=Gryffindor&orderOfThePhoenix=true")
    #
    # json = JSON.parse(response.body, symbolize_names: true)
  end
end
