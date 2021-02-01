class Api::ArticlesController < ApplicationController
  def index
    @articles = HTTP.get("http://newsapi.org/v2/everything?q=#{params[:search_terms]}&apiKey=YOUR-API-KEY-HERE").parse["articles"]
    render "index.json.jb"
  end
end
