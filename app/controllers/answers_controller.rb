class AnswersController < ApplicationController
  def index
    @answers = Answer.find(params[:id])
  end
end
