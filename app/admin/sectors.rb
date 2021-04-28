ActiveAdmin.register Sector do

  permit_params :name, :description, :icon

  form do |f|
    f.inputs do
      f.input :name
      # ToDo: HTML Editor
      # ToDo: Upload
    end
    f.actions
  end

end