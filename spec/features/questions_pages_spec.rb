require 'rails_helper'

  describe "answers path" do
    before do
      @question = FactoryGirl.create(:question)
      @answer_1 = FactoryGirl.create(:answer_1, :question_id => @question.id)
      @answer_2 = FactoryGirl.create(:answer_2, :question_id => @question.id)
    end

    it "shows all answers" do
      visit questions_path
      expect(page).to have_content @answer_1.body
      expect(page).to have_content @answer_2.body
    end

    it "can select an answer", js: true do
      visit questions_path
      click_on @answer_1.body
      expect(page).to have_selector "#answer_#{@answer_1.id}", :text => 'Votes 1'
      expect(page).to have_selector "#answer_#{@answer_2.id}", :text => 'Votes 0'
    end

    it "adds a new question", js: true do
      visit questions_path
      click_on 'Add a Question'
      fill_in 'question_answers_attributes_answer_1_body', :with => "Give money to the homeless"
      fill_in 'question_answers_attributes_answer_2_body', :with => "Give money to the investors"
      click_on 'Submit'
      expect(page).to have_content 'Give money to the homeless'
    end
  end
