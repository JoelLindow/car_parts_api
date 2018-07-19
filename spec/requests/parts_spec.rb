require 'rails_helper'

describe '##### parts endpoints #####' do

  it 'returns all parts records' do
    create_list(:part, 5)

    puts "* hitting endpoint"
    get "/api/v1/parts"

    puts "* checking response"
    expect(response).to be_success #200 response

    parts = JSON.parse(response.body)

    puts "* checking count is correct against database records"
    expect(parts.count).to eq(5)
  end

  it 'returns a single part record' do
    create_list(:part, 5)
    create(:part, id: 1000, description: "poopie poo part")

    puts "* hitting endpoint"
    get "/api/v1/parts/1000"

    puts "* checking response"
    expect(response).to be_success #200 response

    part = JSON.parse(response.body)

    puts "* checking for part"
    expect(part["description"])
  end

  it 'returns one item based on search parameter' do
    create_list(:part, 3)

    puts '* hitting endpoint'
    get 'api/v1/parts/find?name=Alternator%202'

    puts '* checking response type'
    expect(response).to be_success

    part = JSON.parse(response.body)

    puts '* checking return'
    expect(part["name"].to eq("Alternator 2")
  end


end
