require 'rails_helper'

describe User, 'association' do
  it { should have_many :bookings }
  it { should have_many :bands }
  it { should have_many :services }
end
