# -*- encoding : utf-8 -*-
FactoryGirl.define do
  factory :article do
    author factory: :user
    title { Faker::Lorem.sentence }
    slug { title.parameterize }
    content { Faker::Lorem.paragraphs(1).first }

    trait :stale do
      created_at 7.months.ago
      updated_at 7.months.ago
    end

    trait :fresh do
      created_at 7.months.ago
      updated_at 6.days.ago
    end
  end
end
