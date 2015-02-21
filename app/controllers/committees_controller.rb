class CommitteesController < InheritedResources::Base
	before_action :set_voivodeships, only: [:new, :create, :edit, :update]
	before_filter :authenticate_user!
	load_and_authorize_resource

	#has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
	#validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  private

    def committee_params
      params.require(:committee).permit(:name, :image)
    end

    def set_voivodships
    @voivodeships = Voivodship.all.map do |voivodeship|
      [voivodeship.name, voivodeship.id]
   end
end

