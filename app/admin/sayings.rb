ActiveAdmin.register Saying do

  permit_params :text

  form do |f|
    f.inputs do
      f.input :text
    end
    f.actions
  end

end