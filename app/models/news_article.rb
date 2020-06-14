require 'open-uri'
require 'pp'
require 'json'

class NewsArticle < ApplicationRecord
    has_many :user_articles
    has_many :users, through: :user_article

    def self.get_data 
        self.destroy_all
        key = ENV['API_KEY']

        url = 'http://newsapi.org/v2/top-headlines?'\
        'country=us&'\
        "#{key}"
        req = open(url)
        response_body = req.read
        data = JSON.parse(response_body)
        articles = data['articles']

        articles.map do |article| 
            author = NewsArticle.create(title: article['title'], source: article['source']['name'], author: article['author'], description: article['description'], url: article['url'], img: article['urlToImage'])
        end
    end


end
