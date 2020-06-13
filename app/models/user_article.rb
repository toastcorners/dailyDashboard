class UserArticle < ApplicationRecord
    belongs_to :user 
    belong_to :news_article

end
