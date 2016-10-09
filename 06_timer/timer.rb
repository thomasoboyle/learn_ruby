class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def seconds_calc(total_seconds)
    sprintf("%02d", total_seconds%60)
  end

  def minutes_calc(total_seconds)
    sprintf("%02d", (total_seconds/60)%60)
  end

  def hours_calc(total_seconds)
    sprintf("%02d", total_seconds/3600)
  end

  def time_string
    "#{hours_calc(@seconds)}:#{minutes_calc(@seconds)}:#{seconds_calc(@seconds)}"
  end
end