# frozen_string_literal: true

require_relative 'lr72'

RSpec.describe Okr do
  it 'KOORD' do
    expect(Okr.superclass).to eql(Kord)
  end
end
