require 'rails_helper'

RSpec.describe AppointmentsController, type: :controller do
    describe 'POST #create' do
      it 'creates new appointment' do
        post :create, params: { appointment: { title: 'Fix breaks', car: 'Honda CRV', products: 'New breaks Pro.' } }, format: :json

        expect(response).to have_http_status(:success)
      end
    end
end
