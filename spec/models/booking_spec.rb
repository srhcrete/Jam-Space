require 'rails_helper'

describe Booking, 'association' do
  it { should belong_to :band }
  it { should belong_to :service }  
end
