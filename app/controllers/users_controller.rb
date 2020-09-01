class UsersController < ApplicationController
  before_action :set_user, only: %i(show edit update destroy)

  def index
    @users = User.order(id: :desc).page(params[:page]).per(10)
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path, notice: "サインアップしました"
    else
      flash.now[:alert] = "サインアップに失敗しました"
      render :new
    end
  end

  def edit
  end

  def update
    if @user = User.update(user_params)
      redirect_to user_path, notice: "内容が更新されました"
    else
      flash.now[:alert] = "保存に失敗しました"
      render :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to root_url, alert: "削除しました"
  end

  private

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
