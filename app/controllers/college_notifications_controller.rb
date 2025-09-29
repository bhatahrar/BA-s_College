class CollegeNotificationsController < ApplicationController
  before_action :require_admin, only: [:new, :create, :edit, :update, :destroy]
  def show
    @notification=CollegeNotification.find(params[:id])

  end 
  def new
    @notification=CollegeNotification.new
  end
  def create 
    @notification=CollegeNotification.new(params.require(:college_notification).permit(:message))
    if @notification.save
      redirect_to root_path,notice:"Notification created"
    else 
      render :new
    end
  end
  def edit
    @notification=CollegeNotification.find(params[:id])
  end
  def update
    @notification=CollegeNotification.find(params[:id])
    if @notification.update(params.require(:college_notification).permit(:message))
      redirect_to root_path,notice:"Notification updated!"
    else 
      render :new
    end
  end
  def destroy
    @notification=CollegeNotification.find(params[:id])
    @notification.destroy
    redirect_to root_path,alert:"Notification deleted!"
  end
  end
  