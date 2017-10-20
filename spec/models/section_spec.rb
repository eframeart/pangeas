# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Section, type: :model do
  describe 'associations' do
    it { is_expected.to have_many(:subsections) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_presence_of(:image_url) }
  end
end
