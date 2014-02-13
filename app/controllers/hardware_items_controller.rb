class HardwareItemsController < ApplicationController
  def index
    @items = HardwareItem.all
  end

  def create

  end


  def user_params
    params.require(:hardware_item).permit(:manufacturer, :hardware_model, :link, :instructions_link, :description, :cost, :algorithm, :speed_gh_s, :power_w, :is_available, :availability_comment, :hardware_type)
    end
  end
end
