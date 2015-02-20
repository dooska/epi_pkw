class VoivodeshipsController < InheritedResources::Base

  private

    def voivodeship_params
      params.require(:voivodeship).permit(:name, :electoral_mandates)
    end
end

