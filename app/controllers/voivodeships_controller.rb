class VoivodeshipsController < InheritedResources::Base
	before_filter :authenticate_user!

  private

    def voivodeship_params
      params.require(:voivodeship).permit(:name, :electoral_mandates)
    end
end

