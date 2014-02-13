class ItemsController < ApplicationController
  def index
    @items = Items.all
  end

  # profile page
  def show
  end

  def compare
  end
end
