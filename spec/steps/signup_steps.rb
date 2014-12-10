#encoding: utf-8

step 'Hệ thống chưa có người dùng' do 

end

step 'vào trang chủ' do 
	visit '/'
end

step 'đi vào trang đăng kí' do 
	visit '/signup'
end

step 'nhập email mật khẩu xác nhận mật khẩu đúng' do 
	fill_in :user_email, :with => 'test@brycen.com.vn'
	fill_in :user_password, :with => '1234567'
	fill_in :user_password_confirmation, :with => '1234567'
end

step 'nhấn nút Đăng ký' do
	click_button 'Đăng ký'
end

step 'chuyển đến trang chủ với nội dung "kích hoạt email"' do 
	expect(page).to have_content 'kích hoạt email'
end

step 'người dùng mở email' do 
	open_email(current_email_address)
end
=begin
Và tôi sẽ nhận được email		
	    Khi tôi mở email
	    Thì tôi sẽ thấy chữ "xác nhận" trong nội dung email
	    Khi tôi nhấn vào "xác nhận" trong email
	    Thì tôi sẽ thấy dòng chữ "Xác nhận tài khoản thành công"		
=end
step 'người dùng sẽ nhận được email với tiêu đề "Xác thực tài khoản"' do 
	unread_emails_for('test@brycen.com.vn').select { |m| m.subject =~ Regexp.new(Regexp.escape("Xác thực tài khoản")) }.size.should == parse_email_count(1)
end

step 'người dùng sẽ thấy chữ "xác nhận" trong nội dung email' do 
	current_email.default_part_body.to_s.should =~ Regexp.new("xác nhận")
end

step 'người dùng nhấn vào đường dẫn đầu tiên trong email' do 
	click_first_link_in_email
end

step 'người dùng sẽ thấy dòng chữ "Xác nhận tài khoản thành công"' do 
	expect(page).to have_content "Xác nhận tài khoản thành công"
end