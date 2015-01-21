class ItemsController < ApplicationController
  def new
  	@item = Item.new
  end

  def create
  	@item = Item.new(item_params)
  	if @item.save
  	  redirect_to root_path
  	else
  	  render 'new'
  	end
  end

  def update
  end

  def destroy
  end

  def show
  	@item = Item.find(params[:id])
  end
  
  def index
  	@items = Item.find(:all)
  end
  
  def item_params
  	params.require(:item).permit(:name, :description)
  end
end
