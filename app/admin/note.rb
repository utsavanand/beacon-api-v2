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
  index do
    column :id do |note|
      link_to note.id, [:admin, note]
    end
    column :title
    column :noteDesc
    column :image
    column :thumbImage
    column "Beacon" do |note|
      note.beacons.map{ |p| p.title }.join(', ')
    end
  end
   permit_params :title, :noteDesc, :image, :thumbImage, :beacons, :beacon_ids, :beacon_notes_ids
  form do |f|
     f.inputs "Details" do
        f.input :title
        f.input :noteDesc
        f.input :image
        f.input :thumbImage
        f.input :beacons, :as => :check_boxes
     end
     f.actions
  end
  
end
