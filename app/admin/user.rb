ActiveAdmin.register User do

  permit_params :name, :email, :role, :constituency
  actions :all
  menu label: "Uzytkownicy"
  filter :name, label: "Nazwa użytkownika"
  filter :role, label: "Uprawnienia"
  filter :constituency, label: "Okręg wyborczy"

  index do 
   column "Nazwa użytkownika", :name
   column "Email", :email
   column "Uprawnienia", :role
   column "Okręg wyborczy", :constituency
   actions  
  end

  form do |f|
    f.inputs "Użytkownik" do
      f.input :name, label: "Nazwa użytkownika"
      f.input :email, label: "Email" 
      f.input :role, label: "Uprawnienia"
      #f.input :constituency, label: "Okręg wyborczy" 
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
