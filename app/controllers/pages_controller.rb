class PagesController < ApplicationController
  def form
  end

  def answer
    @question = params[:question]
    if @question == "I am going to work".downcase
      @response = "Great"
    elsif @question.include?("?")
      @response = "Silly question, get dressed and go to work!".downcase
    else
      @response = "I don't care, get dressed and go to work!"
    end
  end

end
