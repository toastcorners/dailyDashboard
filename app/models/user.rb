class User < ApplicationRecord
    has_many :user_articles
    has_many :news_articles, through: :user_article
end
