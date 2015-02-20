class VotesController < InheritedResources::Base
	before_filter :authenticate_user!

  private

    def vote_params
      params.require(:vote).permit(:committee_id, :constituency_id, :yes_vote)
    end
end

