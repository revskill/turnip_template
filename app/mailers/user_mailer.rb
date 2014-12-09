class UserMailer < ActionMailer::Base
	def test_email(user_id)
		# find user by id
		# send mail

		u = User.find(user_id)
		if u
			to = u.email
			attachments['free_book.pdf'] = File.read('path/to/file.pdf')
			mail(:to => to ,  :subject => "Example Subject",
     :bcc => ["checkraiser11@gmail.com"] ,
     :cc => "hoangthixuyen1958@gmail.com" )
		end
	end
end