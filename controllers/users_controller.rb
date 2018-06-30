get '/' do
  	erb :"home"
end

post "/" do
	user = User.new(params[:user])
	if user.save
		session[:flash][:notice_signup] = "Sign up successfully and you may log in now."
		erb :"home"
	else
		@errors = user.errors.messages
		erb :"home"
	end
end

post "/user" do
	user = User.find_by(email: params[:user][:email])
	if user && user.authenticate(params[:user][:password])
		sign_in(user)
		redirect "/"
	else
		session[:flash][:notice_login] = "Check your email or password."
		redirect "/"
	end
end

post "/logout" do
	sign_out
	redirect "/"
end

get '/:name' do
	@user = User.find_by(name: params[:name])
	erb :"profile"
end