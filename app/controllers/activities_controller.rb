class ActivitiesController < ApplicationController
  def index
    @activities = Activity.all
  end

  def show
    @activity = Activity.find(params[:id])

    @user = User.find(@activity.user_id)
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)

    @activity.user_id = current_user.id

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
    def activity_params
      params.require(:activity).permit(:name, :description, :user_id, :completed, :level)
    end

end
