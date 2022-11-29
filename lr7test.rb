# frozen_string_literal: true

require_relative './lr7'

require 'securerandom'

RSpec.describe DD do
  it 'string from SecureRandom' do
    DD.file_f_edditor([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
    DD.file_g_edditor
    expect(described_class.return_f).to eql(DD.return_g)
  end
end

RSpec.describe DD do
  it 'ok' do
    expect(DD.file_f_edditor([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])).to eq 1
  end
end
