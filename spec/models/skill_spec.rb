require 'spec_helper'

describe Skill do
  it { should validate_presence_of :name }
  it { should validate_uniqueness_of :slug }
  it { should have_and_belong_to_many :people }
end
