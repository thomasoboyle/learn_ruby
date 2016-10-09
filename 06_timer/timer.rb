class Timer
  attr_accessor :seconds,
                :minutes,
                :hours

  def initialize
    @seconds = 0
    @minutes = sprintf("%02d", 0)
    @hours   = sprintf("%02d", 0)
  end

  def spliter
    if @seconds < 10
      puts @seconds
      @seconds = sprintf("%02d", @seconds)
      @minutes = "00"
      @hours   = "00"
    elsif @seconds >= 10 && @seconds < 60
      ones = @seconds%10
      tens = @seconds/10
      @seconds = "#{tens}" + "#{ones}"
      @minutes = "00"
      @hours   = "00"
    elsif minutes_calc
    end
  end


  def time_string
    if @seconds = 0
      "00:00:00"
    else
    "#{@hours}:#{@minutes}:#{@seconds}"
    end
  end

  def minutes_calc
    if @seconds >= 60 && @seconds > 3600
      @minutes   = @seconds%60
      left_over  = hundreds%10
      @seconds   = "#{@minutes}" + "#{left_over}" 
      thousands  = @seconds/60
    else
    'kats'
    end
  end 
end

#above takes care of the ones place
# Need to figure out a way to take car of the other places
# i.e. Tens, minutes - ones, minutes -
