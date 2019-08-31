class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question].strip
    @answer = get_answer(@question)
  end

  def get_answer(question)
    if question.end_with? '?'
      'Silly question, get dressed and go to work!'
    elsif question == 'I am going to work'
      'Great!'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
