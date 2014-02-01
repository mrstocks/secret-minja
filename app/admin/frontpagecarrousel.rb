ActiveAdmin.register Frontpagecarrousel do
  permit_params :id, :title, :filename
  
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
  
   form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs  "Font Page Carrousel" do
      f.inputs "Details" do
        f.input :title
      end
      f.inputs "filename" do
        f.input :filename, :as => :file
      end
     f.actions
   end

  end
end
