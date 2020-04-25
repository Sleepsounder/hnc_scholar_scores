# frozen_string_literal: true

FactoryBot.define do
  factory :removed_applicant do
    user { nil }
    applicant { nil }
  end
end
