module ApplicationHelper
  def error_classes(field)
    field != ""
  end

  def activity_status(activity)
    case activity.status
    when "pending"
      'bg-yellow-400'
    else
      'bg-emerald-400'
    end
  end
end
