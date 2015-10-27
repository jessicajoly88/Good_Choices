class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end


  def create
    @question = Question.new(question_params)
    if @question.save
      respond_to do |format|
        format.html { redirect_to questions_path }
        format.js
      end
    else
      render :new
    end
  end

  private
    def question_params
      params.require(:question).permit(:option1, :option2)
    end
end
