module ApplicationHelper
  def title(value)
    unless value.nil?
      @title = "#{value} | FeesDeCelestia"      
    end
  end
end
