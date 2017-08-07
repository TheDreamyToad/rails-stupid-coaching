class CoachingController < ApplicationController
  def ask
  end

  def answer
    @answer = params[:asker]
  # TODO: return coach answer to your_message
    if ask.include? "?"
      return "Silly question, get dressed and go to work!"
    elsif your_message == "I am going to work right now!"
      return ""
    elsif your_message == "I AM GOING TO WORK RIGHT NOW!"
      return ""
    elsif your_message == your_message.upcase
      return "I can feel your motivation!" + " " + coach_answer(your_message)
   else
      return "I don't care, get dressed and go to work!"
    end
  end
end
