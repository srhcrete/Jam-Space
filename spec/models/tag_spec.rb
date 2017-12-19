require 'rails_helper'

describe Tag, 'association' do
  it { should belong_to :tagable }
end
