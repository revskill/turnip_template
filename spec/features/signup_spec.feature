#encoding: utf-8
#language: vi
Tính năng: Đăng kí người dùng	
	Tình huống: Người dùng không gõ email
	    Khi vào trang chủ
	    Và đi vào trang đăng kí
	    Và nhấn nút Đăng ký
	    Thì hiển thị thông báo "Vui lòng nhập trường email"

	Tình huống: Người dùng gõ đúng các trường và là người dùng mới
		Khi vào trang chủ
		Và đi vào trang đăng kí
		Và nhập email mật khẩu xác nhận mật khẩu đúng
		Và nhấn nút Đăng ký
		Thì chuyển đến trang chủ với nội dung "kích hoạt email"
		Và người dùng sẽ nhận được email với tiêu đề "Xác thực tài khoản"	
		Khi người dùng mở email		    
		Thì người dùng sẽ thấy chữ "xác nhận" trong nội dung email
		Khi người dùng nhấn vào đường dẫn đầu tiên trong email
		Thì người dùng sẽ thấy dòng chữ "Xác nhận tài khoản thành công"	

	Tình huống: Người dùng gõ email đã tồn tại
		Biết đã tồn tại người dùng với email "test1@brycen.com.vn"
		Khi vào trang chủ
		Và đi vào trang đăng kí
		Và nhập email "test1@brycen.com.vn", mật khẩu và xác nhận mật khẩu nhập đúng
		Và nhấn nút Đăng ký
		Thì hiển thị thông báo "Email đã tồn tại"

	Tình huống: Người dùng gõ mật khẩu quá ngắn (dưới 6 ký tự)
		Khi vào trang chủ
		Và đi vào trang đăng kí
		Và nhập email, mật khẩu "12345"
		Và nhấn nút Đăng ký
		Thì hiển thị thông báo "Mật khẩu quá ngắn"

	Tình huống: Người dùng gõ xác nhận mật khẩu không trùng
		Khi vào trang chủ
		Và đi vào trang đăng kí
		Và nhập email, mật khẩu "123456", xác nhận mật khẩu "12345"
		Và nhấn nút Đăng ký
		Thì hiển thị thông báo "Mật khẩu xác nhận không trùng mật khẩu ban đầu"