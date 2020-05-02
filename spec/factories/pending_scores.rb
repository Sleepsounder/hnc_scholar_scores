# frozen_string_literal: true

FactoryBot.define do
  factory :pending_score do
    user { nil }
    applicant { nil }
    comments { "MyText" }
    mccoy { 1 }
    financial { 1.5 }
    academic { 1.5 }
    recommend { 1.5 }
    essay { 1.5 }
  end
end
