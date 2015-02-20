class VotesController < InheritedResources::Base

  private

    def vote_params
      params.require(:vote).permit(:committee_id, :constituency_id, :yes_vote)
    end
end

