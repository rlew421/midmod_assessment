class SearchController < ApplicationController
  def index
    render locals: {
      search_results: PhoenixSearch.new(params[:house])
    }
  end
end
