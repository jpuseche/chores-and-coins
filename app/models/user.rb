class User < ApplicationRecord
  has_many :activities do
    def income
      allActivities = self.activities

      income = 0
      for activity in allActivities do
        @income = activity.level * 1000 + @income
      end

      income = @income.to_s.reverse.scan(/\d{1,3}/).join(",").reverse

      return income
    end
  end


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def user_name
    return first_name + last_name
  end
end
