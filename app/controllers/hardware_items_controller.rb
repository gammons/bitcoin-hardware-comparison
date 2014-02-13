class HardwareItemsController < ApplicationController
  def index
    @items = HardwareItem.all.to_json
  end

  def compare
    @items = HardwareItem.where(id: params[:vals].split(',')).to_json
  end
end
