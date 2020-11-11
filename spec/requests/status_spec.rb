require 'rails_helper'

describe 'The application' do
    it 'is running' do
        get('/')
        expect(response.body).to_not be(nil)
    end
end