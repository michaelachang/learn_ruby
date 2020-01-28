class Timer
  # Sets the method names for the getter and setters
  attr_accessor :seconds, :time_string

  def initialize(seconds = 0)
    @seconds = seconds
  end

  def time_string
    @seconds = Time.at(seconds).utc.strftime("%H:%M:%S")
  end
end
