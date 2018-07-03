class UserProfile < ApplicationRecord
	belongs_to :user
	enum gender: [ :Male, :Female ]

	def avatar
		self.gender ? "/assets/#{self.gender.downcase}.png" : '/assets/dummy.png' 
	end

	def name
		self.first_name + ' ' + self.last_name
	end

end
