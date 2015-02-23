ActiveAdmin.register Committee do

  permit_params :name, :image, :voivodeship, voivodeship_ids: []
  actions :all
  menu label: "Komitety wyborcze"
  #includes :voivodeship
  #belongs_to :voivodeship

  filter :voivodeships, label: "Województwo"
  filter :name, label: "Nazwa komitetu"

  index do
    column "Nazwa komitetu", :name
    column "Województwa" do |committee|
      committee.voivodeships.map(&:name)
    end
    actions 
  end

  show do |ad|
  attributes_table do
    row :name
    row :image do
      image_tag(ad.image.url(:medium))
    end
    # Will display the image on show object page
  end
 end

  form :html => { :enctype => "multipart/form-data" } do |f|
      f.inputs "Committee" do
      f.input :name, label: "Nazwa komitetu"
      f.input :image, :as => :file
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
