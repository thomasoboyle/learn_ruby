class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def divider
    if @seconds < 10
      puts @seconds
      @seconds = sprintf("%02d", @seconds)
    elsif @seconds >= 10 && @seconds < 60
      ones = @seconds%10
      tens = @seconds/10
      "#{tens}" + "#{ones}"
    elsif minutes
      #minutes method
    end
  end


  def time_string
    "00:00:#{divider}"
  end

  def minutes
    if @seconds >= 60
      hundreds  = @seconds%60
      thousands = @seconds/60
    else
    'kats'
    end
  end 
end

#above takes care of the ones place
# Need to figure out a way to take car of the other places
# i.e. Tens, minutes - ones, minutes -
