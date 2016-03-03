class ItemsController < ApplicationController

  def show
    @item = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.create(item_params)
    redirect_to list_path(list)
  end

  private

  def item_params
    params.require(:item).permit(:item, :comment)
  end
end
