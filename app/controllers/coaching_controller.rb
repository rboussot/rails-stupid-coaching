class CoachingController < ApplicationController
  def answer
    @query = params[:query]
    @insults = ["merde", "con", "salaud", "connard", "gueule", "nique"]
    if @query.include?("go") || @query.include?("Go")
      @answer = "OK!"
    elsif @insults.include?(@query)
      @answer = "Manque de respect = 100 pompes !"
    elsif @query.include?("?")
      @answer = "Silly question, get dressed and go to work!"
    elsif @query.include?("!") || @query == @query.upcase
      @answer = "I can feel your motivation!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end

  def ask
  end
end
