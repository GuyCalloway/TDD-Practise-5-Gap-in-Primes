require 'gap'

describe "primes Gap" do
    it "returns 1" do
        expect(gap(1,1,2)).to eq([1, 2])
    end

    it "returns 1" do
        expect(gap(2,1,2)).to eq([nil])
    end
end