class Question < ActiveRecord::Base
  validates :text, :presence => true
  has_many :options
end
