# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :post do
    title "MyString"
    body "MyText"
    teaser "MyTeaser"
    publish_date Time.now
  end
end
