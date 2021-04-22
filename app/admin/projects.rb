ActiveAdmin.register Project do

  permit_params :organization_id, :working_date, :publish_date, :title

  form(:html => {:multipart => true}) do |f|
    f.inputs do
      f.input :title
      f.input :working_date
      f.input :publish_date
      f.input :organization_id, :label => 'Organization', :as => :select, :collection => Organization.all.map{|a| ["#{a.name}", a.id]}
    end
    f.actions
  end
end

