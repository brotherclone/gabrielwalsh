ActiveAdmin.register CaseStudy do

  permit_params :project_id, :sub_title, :description, :large_visual

  form do |f|
    f.inputs do
      # ToDo: Reference
      f.input :sub_title
      # ToDo: HTML Editor
      f.input :large_visual, :as => :file
      f.input :large_visual_cache, :as => :hidden
    end
    f.actions
  end

end