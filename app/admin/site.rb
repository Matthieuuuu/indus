ActiveAdmin.register Site do

  permit_params :user#, :title, :city, :description, :category, :available

  index do
    selectable_column
    column :user
    column :title
    column :city
    # column :description
    column :category
    column :available
    actions
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


end
