class CommitteesController < InheritedResources::Base
	before_filter :authenticate_user!

  private

    def committee_params
      params.require(:committee).permit(:name)
    end
end

