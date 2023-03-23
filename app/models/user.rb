class User < ApplicationRecord
  validates_presence_of :first_name, :last_name, :email, :gender, :phone

  has_many :activities
  has_many :sons

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def user_name
    first_name + last_name
  end

  def income
    activities = Activity.where(user_id: self.id, status: "completed").all

    income = 0
    activities.each do |activity|
      income = activity.level * 1000 + income
    end

    income = income.to_s.reverse.scan(/\d{1,3}/).join(",").reverse
  end
end
