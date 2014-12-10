#encoding: utf-8
#language: vi
Tính năng: Đăng kí người dùng	
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
		Và nhập email test1@brycen.com.vn, mật khẩu và xác nhận mật khẩu nhập đúng
		Và nhấn nút Đăng ký
		Thì hiển thị thông báo "Email đã tồn tại"