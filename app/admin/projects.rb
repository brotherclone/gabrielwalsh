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
      # ToDo: Upload
      # ToDo: Upload
    end
    f.actions
  end

end