class PostsController < ApplicationController
  def index
    @posts = Post.all.order(created_at: :desc)
  end
  
  def show
    @post = Post.find_by(id: params[:id])
  end
  
  def new
  end
  
  def create
    # フォームから送信されたデータを受け取り、保存する処理を追加してください
    @post = Post.new(content: params[:content])
    @post.save  
    # redirect_toメソッドを用いて、自動的に投稿一覧ページに転送されるようにしてください
    redirect_to("/posts/index") 
  end
end      
