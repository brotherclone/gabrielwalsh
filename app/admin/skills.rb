ActiveAdmin.register Skill do

  permit_params :my_role_id, :name, :description, :icon

  form do |f|
    f.inputs do
      f.input :my_role_id, :label => 'My Role', :as => :select, :collection => MyRole.all.map{|a| ["#{a.role_name}", a.id]}
      f.input :name
      # ToDo: HTML Editor
      f.input :icon, :as => :file
      f.input :icon_cache, :as => :hidden
    end
    f.actions
  end

end