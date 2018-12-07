module ApplicationHelper

  def time_ago(time)
    "#{time_ago_in_words(time)} ago"
  end

  def status_convertor(status, truthy: 'Active', falsey: 'Pending' )
    if status
      truthy
    else
      falsey
    end
  end
end
