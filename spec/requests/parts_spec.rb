require 'rails_helper'

describe '##### parts endpoints #####' do
  let(:make) { create(:make) }
  let(:car_model) { create(:car_model) }
  let(:year) { create(:year) }

  it 'returns all parts records' do
    create_list(:part, 5)

    puts "* hitting endpoint"
    get "/api/v1/parts"

    puts "* checking response"
    expect(response).to be_success #200 response

    parts = JSON.parse(response.body)

    puts "* checking count is correct against database records"
    expect(parts.count).to eq(5)

    puts "** Test Successful   VVVVV"
  end

  it 'returns a single part record' do
    # create_list(:part, 5)
    x = Part.create(name: "ABCDEFG", description: "This this is really huge", oem: true, price: 10.25)
    y = create(:spaghetti, make_id: make.id, car_model_id: car_model.id, year_id: year.id)
    x.spaghetti = y

    puts "* hitting endpoint"
    get "/api/v1/parts/#{x.id}"

    puts "* checking response"
    expect(response).to be_success #200 response

    part = JSON.parse(response.body)

    puts "* checking for part"
    expect(part["description"])

    puts "** Test Successful   VVVVV"
  end


  # CUSTOM PARTS SEARCH TESTS

  it 'returns one item based on search parameter' do
    # create_list(:part, 3)
    x = Part.create(name: "ABCDEFG", description: "This this is really huge", oem: true, price: 10.25)
    y = create(:spaghetti, make_id: make.id, car_model_id: car_model.id, year_id: year.id)
    x.spaghetti = y
    # binding.pry

    puts '* hitting endpoint'
    get '/api/v1/parts/find?name=ABCDEFG'

    puts '* checking response type'
    expect(response).to be_success

    part = JSON.parse(response.body)
# binding.pry
    puts '* checking return'
    expect(part["name"]).to eq("ABCDEFG")

    puts "** Test Successful   VVVVV"
  end

  it 'can add a record to the database' do
    create(:year, year: 1998)
    create(:make, name: "Ford")
    create(:car_model, name: "Truck")
    puts "* creating params"
    part_params = {
        name: "Flux Capacitor",
        description: "This is the higher jigawatt output model",
        oem: "1",
        price: "123.45",
        year: "1998",
        car_model: "Truck",
        car_make: "Ford"
    }
    puts "* posting to API as OEM part"
    post '/api/v1/parts/', params: part_params

    puts "* Checking Status Code"
    expect(response.status).to eq(200)

    puts "* Checking Proper Message Return Upon Successful Database Entry"
    expect(JSON.parse(response.body)["message"]).to eq("Part Successfully Created")

    puts "* Checking Database Entry for Proper Values"
    last_part = Part.last
    expect(last_part.name).to eq("Flux Capacitor")
    expect(last_part.description).to eq("This is the higher jigawatt output model")
    expect(last_part.oem).to eq(true)
    expect(last_part.price).to eq(123.45)
    expect(last_part.year.year).to eq(1998)
    expect(last_part.make.name).to eq("Ford")
    expect(last_part.car_model.name).to eq("Truck")
    puts "** Test Successful   VVVVV"
  end

  it 'can reject a database entry that is not valid' do
    puts "***** WE NEED TO WRITE THIS TEST ***"
    puts "***** WE NEED TO WRITE THIS TEST ***"
    puts "***** WE NEED TO WRITE THIS TEST ***"
    puts "***** WE NEED TO WRITE THIS TEST ***"
    puts "***** WE NEED TO WRITE THIS TEST ***"
  end


end
