ActiveAdmin.register Voivodeship do

  permit_params :name, :electoral_mandates
  actions :all
  menu label: "Województwa"
  filter :name, label: "Nazwa województwa"
  filter :committee, label: "Komitet wyborczy"
  filter :constituency, label: "Okręg wyborczy"


  index do 
   column "Nazwa", :name
   column "Liczba mandatów", :electoral_mandates
   actions  
  end

  form do |f|
    f.inputs "Województwo" do
      f.input :name, label: "Nazwa województwa"
      f.input :electoral_mandates, label: "Liczba mandatów"
    end
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
