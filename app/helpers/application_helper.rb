module ApplicationHelper

  def whitespace_stripper(value)
    value.nil? ? value : value.squish
  end

end
