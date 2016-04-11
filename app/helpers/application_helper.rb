module ApplicationHelper

  def blank_when_zero(number)
    number == 0 ? '' : number
  end

end
