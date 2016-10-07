class Timer
  attr_writer :seconds

  def initialize
    @sec = 0
  end

  def seconds
    @sec
  end

  def divider
    if @sec < 10
      "0#{@sec}"
    elsif @sec >= 10
      tens = 1 + "#{@sec}"%10

    end

  end


  def time_string
    "00:00:#{divider}" #maybe there is a chance for
  end                  # a method called divider
end

#above takes care of the ones place
# Need to figure out a way to take car of the other places
# i.e. Tens, minutes - ones, minutes -
