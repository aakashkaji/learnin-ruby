class AuthorsController < ApplicationController

  before_action :set_author, only: [:update_author, :destroy]

  def create_author
    @author = Author.new(author_params)
    if @author.save
      render json: @author, status: :created

    else
      render json: @author.errors, status: :unprocessable_entity
    end
  end

  def get_authors
    @author = Author.all

    render json: @author

  end

  def update_author
    if @author.update(author_params)
      render json: @author
    else
      render json: @author.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @author.destroy
    render json: @author
  end

  private

  def author_params
    params.require(:author).permit(:name, :email, :phone)
  end

  def set_author
    @author = Author.find(params[:id])
  end
end
