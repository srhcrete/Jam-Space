require 'rails_helper'

describe Review, 'association' do
  it { should belong_to :band }
  it { should belong_to :service }
end
