module ApplicationHelper
  def number_to_currency(value)
    if value == 0 or value.blank?
      raw "&ndash;"
    else
      ActionController::Base.helpers.number_to_currency(value)
    end
  end
end
