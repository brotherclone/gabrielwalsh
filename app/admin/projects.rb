ActiveAdmin.register Project do

  permit_params :organization_id, :title, :working_date, :publish_date,
                :description, :small_image, :large_image

  form do |f|
    f.inputs do
      # ToDo: Reference
      f.input :title
      # ToDo: Calendar
      # ToDo: Calendar
      # ToDo: HTML Editor
      f.input :large_image, :as => :file
      f.input :large_image_cache, :as => :hidden
      f.input :small_image, :as => :file
      f.input :small_image_cache, :as => :hidden
    end
    f.actions
  end

end