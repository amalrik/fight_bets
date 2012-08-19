module FightsHelper
  def all_future_fights(fights)
    fights.select{ |f| f.result == nil }
  end

  def all_past_fights(fights)
    fights.select { |f| f.result }
  end
end
