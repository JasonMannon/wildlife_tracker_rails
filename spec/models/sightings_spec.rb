require 'spec_helper'

describe Sighting do
  it { validate_presence_of :name }
  it { validate_presence_of :date }
  it { validate_presence_of :time }
  it { should belong_to :species }
end
