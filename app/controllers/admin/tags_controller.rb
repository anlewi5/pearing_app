class Admin::TagsController < ApplicationController
  before_action :require_admin

  def index
    @tags = Tag.all
  end

  def new
    @tag = Tag.new
  end

  def create
    @tag = Tag.create!(tag_params)

    redirect_to tags_path
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy

    redirect_to tags_path
  end

  private

  def tag_params
    params.require(:tag).permit(:title)
  end

  def require_admin
    render file: "/public/404" unless current_admin?
  end

end
