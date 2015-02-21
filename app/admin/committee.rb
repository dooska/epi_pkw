ActiveAdmin.register Committee do

  permit_params :name, :image, voivodeship_ids: []
  actions :all
  menu label: "Komitety wyborcze"
  #includes :voivodeship
  #belongs_to :voivodeship

  index do
    column "Nazwa komitetu", :name
    column "Województwo", :voivodeship
    actions 
  end

  form do |f|
    f.inputs "Komitet wyborczy" do
      f.input :name, label: "Nazwa komitetu"
      f.input :voivodeships, as: :check_boxes, label: "Województwo"
    end
    f.actions
  end

  #filter :voivodeships as: :check_boxes, label: "Województwo"

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
