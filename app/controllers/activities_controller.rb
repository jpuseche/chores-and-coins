class ActivitiesController < ApplicationController
  before_action :authenticate_user!
  before_action :find_activity, only: [:show, :edit, :update, :destroy]

  def index
    @activities = Activity.all.limit(10).order("created_at")
  end

  def show
    @users = User.all
  end

  def new
    @activity = Activity.new
  end

  def assign_task
    @activity = Activity.find(params[:id])
    @activity.update(user_id: params[:user_id_to_assing])

    redirect_to @activity
  end

  def create
    @activity = Activity.new(activity_params)
    @activity.status = "created"
    if @activity.save
      redirect_to @activity
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @activity = Activity.find(params[:id])
  end

  def update
    @activity = Activity.find(params[:id])

    if @activity.update(activity_params)
      redirect_to @activity
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @activity = Activity.find(params[:id])
    @activity.destroy
    redirect_to root_path, status: :see_other
  end

  private
    def find_activity
      @activity = Activity.find(params[:id])
    end

    def activity_params
      params.require(:activity).permit(:name, :description, :completed, :level)
    end
end
