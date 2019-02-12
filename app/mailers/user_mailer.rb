class UserMailer < ApplicationMailer
	default from: 'noreply@avatron.pp.ua'

	def confirm_email(user)
		@user = user
		mail(to: @user.new_email, subject: 'Email confirmation')
	end

end
