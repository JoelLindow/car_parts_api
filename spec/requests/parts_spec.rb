require 'rails_helper'

describe '##### parts endpoints #####' do

  it 'returns a part record' do
    create_list(:part, 5)

    puts "* hitting endpoint"
    get "/api/v1/parts"

    puts "* checking response"
    expect(response).to be_success #200 response

    parts = JSON.parse(response.body)

    puts "* checking count is correct against database records"
    expect(parts.count).to eq(5)
  end

end
