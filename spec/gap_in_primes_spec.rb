require 'gap_in_primes'

describe "primes Gap_in_primes" do
    it "returns 1, 2 for 1 , 2 integer inputs" do
        expect(gap_in_primes(1,1,2)).to eq([1, 2])
    end

    it "returns nil for gap_in_primes larger than difference between input integers" do
        expect(gap_in_primes(2,1,2)).to eq(nil)
    end

    it "returns 5, 7" do
        expect(gap_in_primes(2,5,7)).to eq([5,7])
    end

    it "returns 11, 17" do
        expect(gap_in_primes(6,11,20)).to eq(nil)
    end

    it "returns nil" do
        expect(gap_in_primes(2,4,6)).to eq(nil)
    end

    it "returns 337, 437" do
        expect(gap_in_primes(10,300,400)).to eq([337, 347])
    end

    it "returns nil" do
        expect(gap_in_primes(6,100,110)).to eq(nil)
    end

    it "returns 8 gap_in_primes" do
        
        expect(gap_in_primes(11,30000,100000)).to eq(nil)
        
    end

end