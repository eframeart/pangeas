# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Subscription, recurrence: :model do
  subject(:subscription) do
    Subscription.new(
      user: user,
      recurrence: 'monthly'
    )
  end

  let(:user) do
    User.create!(
      email: 'foo@bar.com',
      first_name: 'Foo',
      last_name: 'Bar',
      password: 'foobarfoo'
    )
  end

  describe 'associations' do
    it { is_expected.to belong_to(:user) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:user) }
    it { is_expected.to validate_presence_of(:recurrence) }
  end

  describe 'activate' do
    subject { subscription.activate! }

    it 'updates activated at timestamp' do
      expect { subject }.to change { subscription.activated_at }
        .from(nil).to(anything)
    end
  end
end
