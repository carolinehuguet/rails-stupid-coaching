class QuestionsController < ApplicationController
  def ask
  end

  def answer
    if params[:question].present?
      @question = params[:question]
    else
      @question = "Question?"
    end

    if params[:question] == "I am going to work"
      @answer = "Great"
    elsif
      @question.last == "?"
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
