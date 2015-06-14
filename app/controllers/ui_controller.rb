class UiController < ApplicationController
  layout :choose_layout

  private
  def choose_layout
    case action_name
    when /^_/
      false
    else
      "cookbook"
    end
  end
end
