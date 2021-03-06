require_relative 'instructor'
class Teacher < Instructor
  attr_reader :performance_rating

  def initialize(options={})
    @target_raise = 1000 # possibly make this  a constant
    super
  end

  def set_performance_rating(rating)
    response = ""
    if rating > 90
      receive_raise(@target_raise)
      response = "Yay, I'm a great employee!"
    else
      response += "Oh, well -- thanks to this actionable, specific, and kind "
      response += "feedback, I'll do better next time."
    end
    response
  end
end
