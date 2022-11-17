class ListsController < ApplicationController
  before_action :set_list, only: [:show]

  def index
  @lists = List.all
  end

  def show
    @movies = Movie.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.create(list_params)

    redirect_to lists_path
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end

  def set_list
    @list = List.find(params[:id])
  end
end
