FactoryGirl.define do
  factory :project do
    sequence(:title) { |n| "Projeto socioambiental #{n}" }
    description "Dolorem ipsum dolor sit amet"
  end
end
