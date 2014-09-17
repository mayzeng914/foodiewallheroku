class CommentsController < ApplicationController

	def create
		

		
		

		# current_user.foodiepictures.find(params[:id])
		puts "***********"

		@foodiepicture = Foodiepicture.find(params[:foodie_id])

		@comment_on_pic = @foodiepicture.comments.new(params.require(:comment).permit(:comment))
		@comment_on_pic.user_id = current_user.id

		if @comment_on_pic.save
			redirect_to foodiepicture_path(@foodiepicture.id)
		end
		
	end

end
