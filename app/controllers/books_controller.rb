class BooksController < ApplicationController
  before_action :authenticate_api_user!

  def index
    @books = Book.page params[:page]
    render json: @books, each_serializer: BookSerializer
  end

  def show
    @book = Book.find(params[:id])
    render json: @book, serializer: BookSerializer
  end
end
