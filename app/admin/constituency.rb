ActiveAdmin.register Constituency do
  permit_params :name, :voters, :used_ballots, :invalid_no_choise, :invalid_more_choices, :invalid_other, :voivodeship_id, :voivodeship
  actions :all
  menu label: "Okręgi wyborcze"


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
