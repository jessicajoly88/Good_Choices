class AnswersController < ApplicationController
  def index
    @answers = Answer.find(params[:id])
  end

  def update
    binding.pry
  end
end
