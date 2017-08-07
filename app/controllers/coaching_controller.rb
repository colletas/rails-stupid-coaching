# class CoachingController < ApplicationController

#   def answer
#     @question = params[:question]
#     @answer = coach_answer(@question)
#   end

#   def ask
#   end

#   private
#   ​
#   def coach_answer(question)
#     if question.downcase == "i am going to work right now!"
#       return ""
#     elsif question.end_with?("?")
#       return "Silly question, get dressed and go to work!"
#     else
#       return "I don't care, get dressed and go to work!"
#     end
#   end

# end

class CoachingController < ApplicationController
  def answer
    @question = params[:question]
    @answer = coach_answer(@question)
  end

  def ask
  end

  private

  def coach_answer(question)
    if question.downcase == "i am going to work right now!"
      return "stop"
    elsif question.end_with?("?")
      return "Silly question, get dressed and go to work!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end

end
