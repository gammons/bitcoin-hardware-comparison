class HardwareItemsController < ApplicationController
  def index
    @items = HardwareItem.all
  end
end
