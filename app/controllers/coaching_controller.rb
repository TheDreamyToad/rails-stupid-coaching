class CoachingController < ApplicationController
  def ask
  end

  def answer
    @answer = params[:asker]
  # TODO: return coach answer to your_message
    if @answer.include? "?"
      @coach_answer = "Silly question, get dressed and go to work!"
    elsif @answer == "I am going to work right now!"
      @coach_answer = ""
    elsif @answer == "I AM GOING TO WORK RIGHT NOW!"
      @coach_answer = ""
    else
      @coach_answer = "I don't care, get dressed and go to work!"
    end
    return @coach_answer
  end
end
