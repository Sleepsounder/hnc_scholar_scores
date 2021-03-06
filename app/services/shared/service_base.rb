# frozen_string_literal: true

class Shared::ServiceBase < ActiveInteraction::Base
  def success_message
    "Success!"
  end

  def failure_message
    "Failure."
  end

  def failure_status
    422
  end

  def validate_and_save(model_object)
    unless model_object.save
      errors.merge!(model_object.errors)
    end
    model_object
  end
end
