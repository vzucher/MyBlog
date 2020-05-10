class AuthorsController < ApplicationController
  before_action :set_author, only: %i[show edit update destroy]

  def index
    @authors = Author.all
  end

  def show; end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    author.save
  end

  def edit; end

  def update
    @author.update(author_params)
    redirect_to author_path(@author)
  end

  def destroy
    @author.destroy
    redirect_to authors_path
  end

  private

  def set_author
    @author = Author.find(params[:id])
  end

  def author_params
    params.require(:author).permit(
      :first_name,
      :last_name,
      :bio,
      :email,
      :thumbnail
    )
  end
end
