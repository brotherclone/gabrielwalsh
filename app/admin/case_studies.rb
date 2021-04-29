ActiveAdmin.register CaseStudy do

  permit_params :project_id, :sub_title, :description, :large_visual

  form do |f|
    f.inputs do
      f.input :project_id, :label => 'Project', :as => :select, :collection => Project.all.map{|a| ["#{a.title}", a.id]}
      f.input :sub_title
      f.input :description
      f.input :large_visual, :as => :file
      f.input :large_visual_cache, :as => :hidden
    end
    f.actions
  end

end