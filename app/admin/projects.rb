ActiveAdmin.register Project do

  permit_params :organization_id, :title, :working_date, :publish_date,
                :description, :small_image, :large_image

  form do |f|
    f.inputs do
      f.input :organization_id, :label => 'Organization', :as => :select, :collection => Organization.all.map{|a| ["#{a.name}", a.id]}
      f.input :title
      f.input :working_date, as: :datepicker
      f.input :publish_date, as: :datepicker
      f.input :description, as: :froala_editor
      f.input :large_image, :as => :file
      f.input :large_image_cache, :as => :hidden
      f.input :small_image, :as => :file
      f.input :small_image_cache, :as => :hidden
    end
    f.actions
  end

end