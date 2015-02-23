class CommitteesController < InheritedResources::Base
	before_action :set_voivodeships, only: [:new, :create, :edit, :update]
	before_filter :authenticate_user!
	#load_and_authorize_resource

	

  private

    def committee_params
      params.require(:committee).permit(:name, :image)
    end

    def set_voivodeships
    @voivodeships = Voivodeship.all.map do |voivodeship|
      [voivodeship.name, voivodeship.id]
   end
end

end

