class LikesController < ApplicationController

	def create
		project = Project.find_by_id(like_params[:project_id])
		if current_user.liked_projects.include? project
			render json: {}, status: :bad_request
		else 
			@like = current_user.likes.new(like_params)
			if @like.save
				render json: @like
			else 
				render json: { errors: @like.errors.full_messages }, status: :unprocessable_entity
			end
		end
	end

	def destroy
		likes = current_user.likes.where(project_id: params[:id])
		if likes.any?
			# render json: {}, status: :bad_request
			likes.first.destroy
			render json: likes.first
		else 
			render json: {}, status: :bad_request
		end
	end

	private
		def like_params
			params.require(:like).permit(:project_id)
		end

end