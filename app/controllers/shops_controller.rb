class ShopsController < ApplicationController

  def show
  end

  def index
    @shops = Shop.all
  end

end
