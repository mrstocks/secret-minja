ActiveAdmin.register Dogimage do
  permit_params :dog_id, :filename, :title
  
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
    f.inputs "Dog image" do
      f.inputs "Details" do
        f.input :title
        f.input :dog
      end
      f.inputs "filename" do
        f.input :filename, :as => :file
      end
     f.actions
   end

  end
 
end
