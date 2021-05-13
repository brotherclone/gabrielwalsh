ActiveAdmin.register MyRole do

  permit_params :role_name

  form do |f|
    f.inputs do
      f.input :role_name
    end
    f.actions
  end

end