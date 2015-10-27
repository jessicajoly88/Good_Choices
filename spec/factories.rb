FactoryGirl.define do
  factory :question do
  end

  factory :answer_1, class: Answer do
    body 'live in a cold house'
  end

  factory :answer_2, class: Answer do
    body 'live in a warm house'
  end
end
