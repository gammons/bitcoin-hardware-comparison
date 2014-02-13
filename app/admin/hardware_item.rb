ActiveAdmin.register HardwareItem do
  permit_params :manufacturer, :hardware_model, :link, :instructions_link, :description, :cost, :algorithm, :speed_gh_s, :power_w, :is_available, :availability_comment, :hardware_type

  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  
end
