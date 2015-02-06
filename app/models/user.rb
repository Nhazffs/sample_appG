# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  nom        :string(255)
#  email      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class User < ActiveRecord::Base

	# expression réguliere
	email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	
	# test non vide && <51
	validates :nom, :presence => true,
					:length   => { :maximum => 50 }
	# test non vide && comforme à l'expression réguliere
	validates :email, :presence => true,
					  :format   => { :with => email_regex },
					  :uniqueness => { :case_sensitive => false }
	# attr_accessible :nom, :email
	def user_params
		params.require(:User).permit(:nom, :email)
		
	end
end
