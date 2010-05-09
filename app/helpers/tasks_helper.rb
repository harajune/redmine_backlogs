module TasksHelper
  def mark_closed_if_so(item_or_task)
    return if item_or_task.nil?
    item_or_task.issue.status.is_closed? ? "closed" : ""
  end

  def one_or_two_line_height(item)
    if item.backlog_id.nil? || item.backlog_id == 0
      maxLength = 50
    else
      maxLength = 65
    end
    item.subject.length > maxLength ? "item_double" : ""
  end

  def mark_if_closed(item)
    !item.new_record? && item.issue.status.is_closed? ? "closed" : ""
  end
end
