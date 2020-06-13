class Api::V1::UserArticlesController < ApplicationController

    def index 
        user_articles = UserArticle.all
        render json: user_articles
    end

    def show
        user_article = UserArticle.find
        render json: user_article
    end

    def destroy
        user_article = UserArticle.find(params[:id])
        user_article.destroy
    end

    def edit
        user_article = UserArticle.find(params[:id])
        render json: user
    end

    def update
        user_article = UserArticle.find(params[:id])
        user_article.update(user_article_params)
        render json: user
    end

    private

    def user_article_params
        params.require(:user).permit(:name, :birthday, :city, :bio)
    end

    
end