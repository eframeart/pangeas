# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'User policy' do
  subject { UserPolicy }

  permissions :index?, :create?, :update?, :destroy? do
    context 'when user is admin' do
      let!(:user) do
        User.create!(
          first_name: 'john',
          last_name: 'doe',
          email: 'foo@bar.com',
          password: '123456',
          admin: true
        )
      end

      it 'allows access' do
        expect(subject).to permit(user)
      end
    end

    context 'when user is not admin' do
      let!(:user) do
        User.create!(
          first_name: 'john',
          last_name: 'doe',
          email: 'foo@bar.com',
          password: '123456',
          admin: false
        )
      end

      it 'denies access' do
        expect(subject).not_to permit(user)
      end
    end
  end
end
