class VotesController < InheritedResources::Base
	before_filter :authenticate_user!
	load_and_authorize_resource
	before_action :set_vote, only: [:show, :edit, :update, :destroy]
  #before_action :set_committees, only: [:new, :edit, :update, :create]

  private

    def vote_params
      params.require(:vote).permit(:committee_id, :constituency_id, :yes_vote)
    end

    #def set_committees
     # constituency = Constituency.find_by_id(current_user.constituency_id)
      #@committees = constituency.committee.map do |committee|
       # [committee.name, committee.id ]
      #end
    #end

    # Use callbacks to share common setup or constraints between actions.
    def set_vote
      @vote = Vote.find(params[:id])
    end
end

