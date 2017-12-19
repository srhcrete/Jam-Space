require 'rails_helper'

describe Band, 'association' do
  it { should belong_to :user }
  it { should have_many :bookings }
  it { should have_many :tags }
end
# 
# describe Band, '' do
#
# end
#
# describe Band, '' do
#
# end
