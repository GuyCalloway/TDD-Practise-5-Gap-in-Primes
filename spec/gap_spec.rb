require 'gap'

describe "primes Gap" do
    it "returns 1, 2 for 1 , 2 integer inputs" do
        expect(gap(1,1,2)).to eq([1, 2])
    end

    it "returns nil for gap larger than difference between input integers" do
        expect(gap(2,1,2)).to eq([nil])
    end

    it "returns 5, 7" do
        expect(gap(2,5,7)).to eq([5,7])
    end

    it "returns 11, 17" do
        expect(gap(6,11,20)).to eq([11,17])
    end

    it "returns nil" do
        expect(gap(2,4,6)).to eq([nil])
    end
end