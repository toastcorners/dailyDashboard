class Api::V1::NewsArticlesController < ApplicationController

    def index 
        news_articles = NewsArticle.all
        render json: news_articles
    end

    def show
        news_article = NewsArticle.find
        render json: news_article
    end 
    
end
