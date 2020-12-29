module ApplicationHelper
  def flash_message
    flash.map do | type, message |
      content_tag :div, message, class: [:alert, "alert-#{type}"]
    end.join
  end
end
