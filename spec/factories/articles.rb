# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  title      :text
#  content    :text
#  category   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

FactoryBot.define do
  factory :article do
    sequence(:title) { |n| "title_#{n}" } # This allows for many articles to be created at the same time
    content "This is my content"
    user # This requires that a user model to be created (or specified) and associated with the record
  end
end
