class Admin::PostsController < Admin::ApplicationController
  def index
    if params[:search].present?
      @posts = Post.search_post(params[:search]).page(params[:page]).per(10)
    else
      @posts = Post.all.order(id: :desc).page(params[:page]).per(10)
    end

  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.traivan_id = current_traivan.id

    if @post.save
      redirect_to admin_posts_path, notice: 'Post was successfull created'
    else
      flash[:alert] = 'Post was problem created'
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to admin_posts_path, notice: 'Post was updated successfull'
    else
      flash[:flash] = 'Post was problem to updated'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to admin_posts_path, notice: 'Post was deleted'
  end

  private
    def post_params
      params.require(:post).permit(:title, :content, :publish, tag_ids: [])
    end
end
