class ShopsController < ApplicationController

  def show
    @shop = Shop.find params[:id]
    @books = @shop.books.group_by(&:title)
  end

  def index
    @shops = Shop.all
  end

end
