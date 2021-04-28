ActiveAdmin.register Sector do

  permit_params :name, :description, :icon

  form do |f|
    f.inputs do
      f.input :name
      # ToDo: HTML Editor
      f.input :icon, :as => :file
      f.input :icon_cache, :as => :hidden
    end
    f.actions
  end

end