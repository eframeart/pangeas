# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'GET /videos', type: :request do
  subject { response }

  context 'without logged user' do
    before do
      get '/videos'
    end

    it { is_expected.to have_http_status(:found) }
  end

  context 'with logged user' do
    let!(:user) do
      User.create!(
        first_name: 'jane',
        last_name: 'doe',
        email: 'bar@baz.com',
        password: '123456',
        cpf: '1234567890',
        address: 'foo',
        address_number: '42',
        zip_code: '123',
        city: 'foo',
        state: 'foo'
      )
    end

    context 'without subscription' do
      before do
        sign_in user
        get '/videos'
      end

      it { is_expected.to have_http_status(:found) }
    end

    context 'with subscription' do
      before do
        Subscription.create!(
          user: user,
          state: 'active',
          recurrence: 'monthly'
        )
        sign_in user
        get '/videos'
      end

      it { is_expected.to have_http_status(:ok) }
    end

    context 'with query string' do
      before do
        Subscription.create!(
          user: user,
          state: 'active',
          recurrence: 'monthly'
        )
        sign_in user
        get '/videos', params: { search: 'foo' }
      end

      it { is_expected.to have_http_status(:ok) }
    end
  end
end
