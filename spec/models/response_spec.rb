require 'spec_helper'

describe Response do
  it { should validate_presence_of :answer }
  it { should belong_to :user }
  it { should belong_to :question }
end
