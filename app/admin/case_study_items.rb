ActiveAdmin.register CaseStudyItem do

  permit_params :case_study_id, :case_study_type, :head_line, :sub_head,
                :text_1, :text_2, :text_3, :image_1, :image_2, :image_3

  form do |f|
    f.inputs do
      # ToDo: Reference
      # ToDo: Enum
      f.input :head_line
      f.input :sub_head
      # ToDo: HTML Editor
      # ToDo: HTML Editor
      # ToDo: HTML Editor
      f.input :image_1, :as => :file
      f.input :image_1_cache, :as => :hidden
      f.input :image_2, :as => :file
      f.input :image_2_cache, :as => :hidden
      f.input :image_3, :as => :file
      f.input :image_3_cache, :as => :hidden
    end
    f.actions
  end

end