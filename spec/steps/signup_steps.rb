#encoding: utf-8
step 'vào trang chủ' do 
	visit '/'
end

step 'đi vào trang đăng kí' do 
	visit '/signup'
end

step 'nhập email mật khẩu xác nhận mật khẩu đúng' do 
	fill_in :user_email, :with => 'h_dung@brycen.com.vn'
	fill_in :user_password, :with => '1234567'
	fill_in :user_password_confirmation, :with => '1234567'
end

step 'nhấn nút Đăng ký' do
	click_button 'Đăng ký'
end

step 'chuyển đến trang chủ với dòng chữ Bạn đã đăng ký thành công. Vui lòng đăng nhập.' do 
	expect(page).to have_content 'Bạn đã đăng ký thành công. Vui lòng đăng nhập'
end