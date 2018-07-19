require 'rails_helper'

describe 'parts api', :type => :request do

  it 'returns a part record' do
    create_list(:part, 5)

    get "/api/v1/parts"

    expect(response_to be_success) #200 response

    parts = JSON.parse(response.body)

    expect(parts.count).to eq(5)
  end

end
