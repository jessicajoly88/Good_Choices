class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def create
    if params.has key?("answer")
      Answer.create(answer_params(params["answer"]))
    else
      params["answers"].each do |answer|
        if answer["body"] != ""
          Answer.create(answer_params(answer))
        end
      end
    end
  end
end
