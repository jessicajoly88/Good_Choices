require 'rails_helper'

describe Question do
  it { should have_many :options }
  it { should validate_presence_of :text }
end
