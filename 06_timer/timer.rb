class Timer
  attr_writer :seconds

  def initialize
    @sec = 0
  end

  def seconds
    @sec
  end

  def time_string
    "00:00:0#{seconds}"
  end
end
