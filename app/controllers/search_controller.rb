class SearchController < ApplicationController

  def index
    @poems = search.top_10_poems_for(params[:author])
  end

  private

  def search
    SearchFacade.new
  end
end
