require 'rails_helper'

RSpec.describe Make, type: :model do

  it { is_expected.to validate_presence_of(:name) }

  it { is_expected.to have_many(:parts) }

  it { is_expected.to have_many(:car_models) }

end
