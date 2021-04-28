ActiveAdmin.register Job do

  permit_params :organization_id, :start_date,
                :end_date, :responsibilities, :accomplishments, :title

  form do |f|
    f.inputs do
      # ToDo: Reference
      # ToDo: Calendar
      # ToDo: Calendar
      # ToDo: HTML Editor
      # ToDo: HTML Editor
      f.input :title
    end
    f.actions
  end

end