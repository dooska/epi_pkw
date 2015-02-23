class ConstituenciesController < InheritedResources::Base
  before_action :set_voivodeships, only: [:new, :create, :edit, :update]
  before_action :set_constituency, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!
  load_and_authorize_resource

  private

  def constituency_params
    params.require(:constituency).permit(:name, :voters, :used_ballots, :invalid_no_choise, :invalid_more_choises, :invalid_other, :voivodeship_id, :voivodeship)
  end

  def set_constituency
      @constituency = Constituency.find(params[:id])
  end

  def set_voivodeships
    @voivodeships = Voivodeship.all.map do |voivodeship|
      [voivodeship.name, voivodeship.id]
   end
  end
end

