ActiveAdmin.register Organization do

  permit_params :name, :location,
                organization_category_ids:[],
                icon_ids: [],
                organization_categories_attributes: [:id, :sector_id]

  form(:html => {:multipart => true}) do |f|
    f.inputs do
      f.input :name
      f.input :location
      f.has_many :organization_categories do |oc|
        oc.inputs "Sectors" do
          oc.input :sector
        end
      end
    end
    f.actions
  end
end
