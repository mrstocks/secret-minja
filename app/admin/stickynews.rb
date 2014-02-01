ActiveAdmin.register Stickynews do
  
  permit_params :id, :title, :leadin, :main, :image, :date

  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #

    form :html => { :enctype => "multipart/form-data" } do |f|
      f.inputs "Sticky News" do
        f.inputs "Details :" do
          f.input :image, :as => :file
          f.input :date
       end
       f.inputs "Texts :" do
         f.input :title
         f.input :leadin
         f.input :main
       end
     f.actions
    end
  end


  show do
    attributes_table do
      row :title
      row :image do
        image_tag stickynews.image.url
      end
      row :leadin
      row :main
      row :date
    end
    active_admin_comments
  end
end
