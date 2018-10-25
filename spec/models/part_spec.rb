require 'rails_helper'

RSpec.describe Part, type: :model do

  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:description) }
  it { is_expected.to validate_presence_of(:price) }

  it { is_expected.to have_one(:make) }
  it { is_expected.to have_one(:car_model) }
  it { is_expected.to have_one(:year) }
  

  it { is_expected.to validate_inclusion_of(:oem).in_array([true, false])}

end
