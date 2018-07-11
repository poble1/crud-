class ArticlesController < ApplicationController
    def create
        params.permit!
        @article = Article.new(params[:article])
        @article.save #생성한 article모델 객체 저장
        redirect_to @article #방금 작성한 새 게시글 내용으로 자동 이동
    end
    
    def new
    end

    def index
        @articles=Article.all
    end
    
    def edit
        @article = Article.find(params[:id])
    end
    
    def update
        params.permit!
        @article = Article.find(params[:id])
        @article.update(params[:article])
        redirect_to @article
    end

    def show
        @article = Article.find(params[:id])

    end
    def destroy
        article = Article.find(params[:id])
        article.destroy
        redirect_to articles_path
    end
end
