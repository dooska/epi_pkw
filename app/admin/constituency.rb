ActiveAdmin.register Constituency do
  permit_params :name, :voters, :used_ballots, :invalid_no_choise, :invalid_more_choices, :invalid_other, :voivodeship_id, :voivodeship, :user
  actions :all
  menu label: "Okręgi wyborcze"
  filter :voivodeship, label: "Województwo"
  filter :name, label: "Nazwa okręgu"

  index do
    column "Nazwa okręgu", :name
    column "Liczba uprawnionych do głosowania", :voters
    column "Województwo", :voivodeship
    column "Użytkownik", :user
    actions 
  end

  form do |f|
    f.inputs "Okręg wyborczy" do
      f.input :name, label: "Nazwa okręgu"
      f.input :voters, label: "Liczba uprawnionych do głosowania" 
      f.input :voivodeship, as: :radio, label: "Województwo"
      f.input :user, label: "Użytkownik" 
    end
    actions
  end



  #filter :voivodeship as: :check_boxes, label: "Województwo"


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
