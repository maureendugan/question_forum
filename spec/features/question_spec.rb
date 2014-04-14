require 'spec_helper'

describe Question do
  it 'allows a user to ask a question',:js => true do
    moe = FactoryGirl.create(:user)
    login moe
    click_link('Ask Question!')

    question = FactoryGirl.create(:question)
    fill_in :question_title, with: question.title
    fill_in :question_body, with: question.body
    click_button "Submit"

    page.should have_content question.title
  end
end
