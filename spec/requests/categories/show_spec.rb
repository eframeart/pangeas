require 'rails_helper'

RSpec.describe "Show category", type: :request do
  subject { response }

  let!(:section) {
    Section.create!(
      name: 'foo section',
      description: 'some section description',
      image_url: 'http://image-url'
    )
  }

  let!(:subsection) {
    Subsection.create!(
      name: "bar subsection",
      section: section,
    )
  }

  let!(:category) {
    Category.create!(
      name: 'baz category',
      description: 'some category description',
      subsection: subsection,
    )
  }

  describe "GET" do
    before do
      get "/categories/#{category.id}"
    end

    it "Returns ok" do
      expect(subject).to have_http_status(:ok)
    end
  end
end
