ActiveAdmin.register MyRole do

  permit_params :role_name, :job_id, :project_id

  form(:html => {:multipart => true}) do |f|
    f.inputs do
      f.input :role_name
      f.input :job_id, :label => 'Job', :as => :select, :collection => Job.all.map{|a| ["#{a.organization.name}", a.id]}
      f.input :project_id, :label => 'Project', :as => :select, :collection => Project.all.map{|b| ["#{b.title}", b.id]}
    end
    f.actions
  end
end