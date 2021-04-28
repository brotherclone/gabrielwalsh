ActiveAdmin.register Skill do

  permit_params :my_role_id, :name, :description, :icon

  form do |f|
    f.inputs do
      # ToDo: Reference
      f.input :name
      # ToDo: HTML Editor
      f.input :icon, :as => :file
      f.input :icon_cache, :as => :hidden
    end
    f.actions
  end

end