class CommitteesController < InheritedResources::Base
  before_action :set_voivodeships, only: [:new, :create, :edit, :update]
  before_filter :authenticate_user!
  load_and_authorize_resource
  before_action :set_committee, only: [:show, :edit, :update, :destroy]


  private

    def committee_params
      params.require(:committee).permit(:name, :image)
    end

    def set_committee
      @committee = Committee.find(params[:id])
    end

    def set_voivodeships
    @voivodeships = Voivodeship.all.map do |voivodeship|
      [voivodeship.name, voivodeship.id]
    end
   end
end

