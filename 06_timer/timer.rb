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
      puts "heellldfjdalfjaf*********"
    else minutes_calc
    end
  end

  def time_string
    spliter
    "#{@hours}:#{@minutes}:#{@seconds}"
  end



  def seconds_calc
    puts "++++++++++++++seconds_cal___________+"
    @seconds >= 10 && @seconds < 60
    ones = @seconds%10
    tens = @seconds/10
    @seconds = "#{tens}" + "#{ones}" #sprintf to 12 here
    @minutes = "00"
    @hours   = "00"
  end

  def minutes_calc
    puts "********fjkalfjalsdf**********"
    @seconds >= 60 && @seconds > 3600
    @minutes   = @seconds/60
    ones       = @seconds%10
    tens       = @seconds/10
  end 
end

