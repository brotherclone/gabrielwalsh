ActiveAdmin.register ProjectPlatform do

  permit_params :project_id, :platform_name, :description, :logo

  form do |f|
    f.inputs do
      # ToDo: Reference
      f.input :platform_name
      # ToDo: HTML Editor
      # ToDo: Upload
    end
    f.actions
  end

end