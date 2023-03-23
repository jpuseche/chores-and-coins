class Admin::ActivitiesController < ApplicationController
  layout :activities_layout
  before_action :authenticate_user!
  before_action :find_activity, only: [:show, :edit, :update, :destroy]

  def index
    @activities = Activity.where("user_id = #{current_user.id}").all.limit(10).order("created_at")
  end

  def show
    @users = User.where(admin: false).all
  end

  def new
    @activity = Activity.new
  end

  def assign_task
    @activity.update_attribute(user_id, params[:user_id_to_assign])

    redirect_to admin_activity_path(@activity.id)
  end

  def create
    @activity = Activity.new(activity_params)
    @activity.user = current_user
    if @activity.save
      flash.now[:alert] = "Your activity was created successfully."
      redirect_to admin_activity_path(@activity.id)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @activity.update(activity_params)
      redirect_to admin_activity_path(@activity.id)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @activity.destroy
    redirect_to root_path, status: :see_other
  end

  private

  def activities_layout
    current_user.admin ? "application" : "son"
  end
  def find_activity
    @activity = Activity.find(params[:id])
  end

  def activity_params
    params.require(:activity).permit(:name, :description, :completed, :level)
  end
end
