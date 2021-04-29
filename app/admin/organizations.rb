ActiveAdmin.register Organization do

  permit_params :name, :location, :description, :logo

  form do |f|
    f.inputs do
      f.input :name
      f.input :location
      f.input :description, as: :froala_editor
      f.input :logo, :as => :file
      f.input :logo_cache, :as => :hidden
    end
    f.actions
  end

end