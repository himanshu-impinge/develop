class UserProfile < ApplicationRecord
	belongs_to :user
	enum gender: [ :Male, :Female ]

	def avatar
		self.gender == "Female" ? 
		"http://www.igeacps.it/app/uploads/2018/05/user_female.png" : 
		'https://amirgroupinc.com/wp-content/uploads/2015/07/icon4.png' 
	end

	def name
		self.first_name + ' ' + self.last_name
	end

end
