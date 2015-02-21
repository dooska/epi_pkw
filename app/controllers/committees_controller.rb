class CommitteesController < InheritedResources::Base
	before_filter :authenticate_user!
	load_and_authorize_resource

  private

    def committee_params
      params.require(:committee).permit(:name)
    end
end

