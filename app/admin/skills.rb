ActiveAdmin.register Skill do

  permit_params :my_role_id, :name

  form(:html => {:multipart => true}) do |f|
    f.inputs do
      f.input :name
      f.input :my_role_id, :label => 'My Role', :as => :select, :collection => MyRole.all.map{|a| ["#{a.role_name}", a.id]}
    end
    f.actions
  end
end

