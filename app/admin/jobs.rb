ActiveAdmin.register Job do

  permit_params :organization_id, :start_date,
                :end_date, :responsibilities, :accomplishments, :title

  form do |f|
    f.inputs do
      f.input :organization_id, :label => 'Organization', :as => :select, :collection => Organization.all.map{|a| ["#{a.name}", a.id]}
      f.input :start_date, as: :datepicker
      f.input :end_date, as: :datepicker
      f.input :responsibilities
      f.input :accomplishments
      f.input :title
    end
    f.actions
  end

end