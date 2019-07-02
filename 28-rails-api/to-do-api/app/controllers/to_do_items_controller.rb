class ToDoItemsController < ApplicationController
  def index
    to_do_items = ToDoItem.all
    render json: to_do_items
  end

  def show
    to_do_item = ToDoItem.find(params[:id])
    render json: to_do_item
  end

  def create
    to_do_item = ToDoItem.new(to_do_params)
    if to_do_item.save
      render json: to_do_item
    else
      render json: { errors: to_do_item.errors.full_messages }, status: 422
    end
  end

  private

  def to_do_params
    params.require(:to_do_item).permit(:title, :done)
  end


end
