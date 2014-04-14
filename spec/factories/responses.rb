# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :response do
    user_id ""
    question_id ""
    answer "MyText"
  end
end
