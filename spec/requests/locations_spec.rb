require 'rails_helper'

RSpec.describe 'Locations API' do
  let!(:location) { create(:location) }
  let!(:recordings) { create_list(:recording, 20, location_id: location.id) }
  let(:location_id) { location.id }
  let(:id) { recordings.first.id }

  describe 'GET /locations/:id' do
      before { get "/api/v1/locations/#{id}" }

      context 'when location exists' do
        it 'returns status code 200' do
          expect(response).to have_http_status(200)
        end

        it 'returns the item' do
          expect(json['id']).to eq(id)
        end
      end

      context 'when location doesnt exist' do
        let(:id) { 0 }

        it 'returns status code 404' do
          expect(response).to have_http_status(404)
        end

        it 'returns a not found message' do
         expect(response.body).to match(/null/)
        end
      end
  end
end
