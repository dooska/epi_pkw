class ConstituenciesController < InheritedResources::Base

  private

    def constituency_params
      params.require(:constituency).permit(:name, :voivodeship_id, :voters, :used_ballots, :invalid_no_choise, :invalid_more_choises, :invalid_other)
    end
end

