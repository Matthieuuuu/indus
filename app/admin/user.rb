ActiveAdmin.register User do
  index do
    selectable_column
    column :id
    column :email
    column :name
    column :sites
    column :stays
    column :created_at
    column :admin
    actions
  end

  form do |f|
    f.inputs "Identity" do
      f.input :name
      f.input :email
    end
    f.inputs "Admin" do
      f.input :admin
    end
    f.actions
  end

  permit_params :name, :email, :admin
end
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end