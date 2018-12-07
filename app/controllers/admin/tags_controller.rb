class Admin::TagsController < Admin::ApplicationController
  def new
    @tag = Tag.new
    @tags = Tag.all
  end

  def create
    tag_params[:name].split(',').map do |n|
        Tag.new(name: n).save
    end
    redirect_to new_admin_tag_url, notice: 'Tag was successful created'
  end

  def edit
    @tag = Tag.find(params[:id])
  end

  def update
    @tag = Tag.find(params[:id])
    if @tag.update(tag_params)
      redirect_to new_admin_tag_url, notice: 'Tag was successful updated'
    else
      flash[:alert] = 'Tag was problem update'
      render :edit
    end
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
    redirect_to new_admin_tag_url, notice: 'Tag was successful delete'
  end
  private
  def tag_params
    params.require(:tag).permit(:id, :name)
  end
end
