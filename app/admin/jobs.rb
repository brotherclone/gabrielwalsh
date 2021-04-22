ActiveAdmin.register Job do

  permit_params :organization_id, :start_date, :end_date

  form(:html => {:multipart => true}) do |f|
    f.inputs do
      f.input :start_date
      f.input :end_date
      f.input :organization_id, :label => 'Organization', :as => :select, :collection => Organization.all.map{|a| ["#{a.name}", a.id]}
    end
    f.actions
  end
end

