class Admin::SonsController < ApplicationController
  def index
    @children = Son.all
  end

  def new
    @son = User.new
  end

  def create
    @son = User.new(son_params)
    if @son.save

    else
      render :new
    end
  end

  private

  def son_params
    params.require(:son).permit(:first_name, :last_name)
  end
end

