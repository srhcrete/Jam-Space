require 'rails_helper'

describe Service, 'association' do
  it { should belong_to :user }
  it { should have_many :bookings }
  it { should have_many :tags }
end
