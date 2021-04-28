ActiveAdmin.register ProjectPlatform do

  permit_params :project_id, :platform_name, :description, :logo

  form do |f|
    f.inputs do
      f.input :project_id, :label => 'Project', :as => :select, :collection => Project.all.map{|a| ["#{a.title}", a.id]}
      f.input :platform_name
      # ToDo: HTML Editor
      f.input :logo, :as => :file
      f.input :logo_cache, :as => :hidden
    end
    f.actions
  end

end