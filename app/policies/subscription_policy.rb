# frozen_string_literal: true

class SubscriptionPolicy < ApplicationPolicy
  def new?
    true
  end

  def create?
    true
  end

  def activate?
    true
  end
end
