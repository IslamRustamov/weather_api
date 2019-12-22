require 'rails_helper'

RSpec.describe Recording, type: :model do
  it { should belong_to(:location) }
  it { should validate_presence_of(:temp) }
  it { should validate_presence_of(:status) }
end
