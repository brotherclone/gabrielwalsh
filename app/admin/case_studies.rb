ActiveAdmin.register CaseStudy do

  permit_params :project_id

  form(:html => {:multipart => true}) do |f|
    f.inputs do
      f.input :project_id, :label => 'Project', :as => :select, :collection => Project.all.map{|a| ["#{a.title}", a.id]}
    end
    f.actions
  end
end

