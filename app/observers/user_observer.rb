class UserObserver < ActiveRecord::Observer
	def after_create(user)
		user.activated = false
		user.activation_code = 'abcde'
		user.save
		Notifier.send_confirmation(user).deliver
	end
end