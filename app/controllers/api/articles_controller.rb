class Api::ArticlesController < ApplicationController
  def index
    @articles = HTTP.headers("X-Api-Key" => Rails.application.credentials.news_api[:api_key]).get("http://newsapi.org/v2/everything?q=#{params[:search_terms]}").parse["articles"]
    render "index.json.jb"
  end
end
