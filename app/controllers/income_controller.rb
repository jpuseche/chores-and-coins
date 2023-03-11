class IncomeController < ApplicationController
  def index
    activities = Activity.all
    @income = 0

    for activity in activities do
      @income = activity.level * 10000 + @income
    end
  end
end
