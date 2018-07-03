class HomeController < ApplicationController
	before_action :authenticate_user!
	before_action :user_profile


	def index
		
	end


	private 	

		def user_profile

			if current_user && !current_user.user_profile.present?
				redirect_to new_user_profile_path
			end
		end

end
