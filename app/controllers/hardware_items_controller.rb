class HardwareItemsController < ApplicationController
  def index
    @items = HardwareItem.all.to_json
  end
end
