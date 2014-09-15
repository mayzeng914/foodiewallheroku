class CommentsController < ApplicationController
	def new
		@foodiepicture.comment = Comment.new		
	end

	def create
		@foodiepicture.comment = current_user.foodiepicture.comments.new(params.require(:comment).permit(:comment))
		if @foodiepicture.comment.save
			render 'foodiepicture/show'
		end
		
	end

end
