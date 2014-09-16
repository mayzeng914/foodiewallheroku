class CommentsController < ApplicationController
	# def new
	# 	@foodiepicture.comment = Comment.new		
	# end

	def create
		@foodiepicture.comment = Comment.new
		@foodiepicture.comment = current_user.foodiepicture.comment.new(params.require(:comment).permit(:comment))
		if @foodiepicture.comment.save
			render 'foodiepicture/show'
		end
		
	end

end
