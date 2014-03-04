ActiveAdmin.register Note do

  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
   permit_params :title, :noteDesc, :image, :thumbImage, :beacons, :summary
  form do |f|
     f.inputs "Details" do
        f.input :title
        f.input :noteDesc
        f.input :image
        f.input :thumbImage
        f.input :summary
        f.input :beacons, :as => :check_boxes
     end
     f.actions
  end
  
end
