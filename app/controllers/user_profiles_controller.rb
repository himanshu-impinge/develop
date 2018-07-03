class UserProfilesController < ApplicationController
	before_action :authenticate_user!
	before_action :set_user_profile, only: [:show]

	def new
		@user_profile = UserProfile.new	
	end

	def create

		user_profile = UserProfile.new profile_params
		user_profile.user_id = current_user.id
		
		if user_profile.save
			redirect_to home_index_path
		else
			redirect_to new_user_profile_path
		end
	end

	def show
	end

	private

		def profile_params
			params.require(:user_profile).permit(:first_name, :last_name, :primary_mobile, :gender, :primary_address)
		end

		def set_user_profile
			@user_profile = UserProfile.find_by_id params[:id]

			if !@user_profile
				redirect_to home_index_path
			end

		end


end
