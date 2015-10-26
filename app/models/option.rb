class Option < ActiveRecord::Base
  validates :choice, :presence => true
  belongs_to :question
end
