class SessionsController < ApplicationController
  def new
  end

  def create
    email = paramas[:session][:email].downcase
    password = params[:session][:password]
    if login(email, password)
      redirect_to login_path, notice: "ログインしました"
    else
      flash.now[:alert] = "ログインに失敗しました"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "ログアウトしました"
  end

  private

    def lonin(email, password)
      @user = User.find_by(email: email)
      if @user && @user.authenticate(password)
        session[:user_id] = @user.id
        return true
      else
        return false
      end
    end
end
