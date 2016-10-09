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
      @seconds = sprintf("%02d", @seconds)
      @minutes = "00"
      @hours   = "00"
    elsif seconds_calc
    elsif minutes_calc
    end
  end


  def time_string
    spliter
    "#{@hours}:#{@minutes}:#{@seconds}"
  end

  def seconds_calc
    @seconds >= 10 && @seconds < 60
    ones = @seconds%10
    tens = @seconds/10
    @seconds = "#{tens}" + "#{ones}"
    @minutes = "00"
    @hours   = "00"
  end

  def minutes_calc
    @seconds >= 60 && @seconds > 3600
    @minutes   = @seconds%60
    left_over  = hundreds%10
    @seconds   = "#{@minutes}" + "#{left_over}" 
    thousands  = @seconds/60
  end 
end

#above takes care of the ones place
# Need to figure out a way to take car of the other places
# i.e. Tens, minutes - ones, minutes -
