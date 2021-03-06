class Admin::TagsController < Admin::BaseController
  def index
    @tags = Tag.all
  end

  def new
    @tag = Tag.new
  end

  def create
    @tag = Tag.create!(tag_params)

    redirect_to admin_tags_path
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy

    redirect_to admin_tags_path
  end

  private

  def tag_params
    params.require(:tag).permit(:title)
  end
end
