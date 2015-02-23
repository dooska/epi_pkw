class VoivodeshipsController < InheritedResources::Base
	before_filter :authenticate_user!
	load_and_authorize_resource
	before_action :set_voivodeship, only: [:show, :edit, :update, :destroy]

  private

    def voivodeship_params
      params.require(:voivodeship).permit(:name, :electoral_mandates)
    end

     def set_voivodship
      @voivodeship = Voivodeship.find(params[:id])
    end
end

