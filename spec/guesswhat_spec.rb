require 'spec_helper'

describe Guesswhat do
  # subject { Guesswhat::Product }

  describe '#image' do
    let(:input) { 'shoe' }
    let(:output) { Guesswhat::Product.image(input) }

    it 'Returns true if the output is correct' do
      expect(output).to eq ("https://pixabay.com/static/uploads/photo/2014/04/03/11/48/womens-shoe-312181_960_720.png")
    end

  end
end
