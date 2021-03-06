require "turn"

describe Turn do
  subject(:turn) { described_class.new }

  describe "result" do
    context "one player mode" do
      it "returns 'draw' message when same choice" do
        allow(Kernel).to receive(:rand).and_return 0
        expect(turn.result("scissors", nil)).to eq [:scissors, :scissors]
      end

      it "returns computer won message when computer chooses Paper" do
        allow(Kernel).to receive(:rand).and_return 1
        expect(turn.result("rock", nil)).to eq [:paper, :rock]
      end

      it "returns player won message when computer chooses Rock" do
        allow(Kernel).to receive(:rand).and_return 2
        expect(turn.result("paper", nil)).to eq [:paper, :rock]
      end

      it "returns computer won message when computer chooses Lizard" do
        allow(Kernel).to receive(:rand).and_return 3
        expect(turn.result("spock", nil)).to eq [:lizard, :spock]
      end

      it "returns player won message when computer chooses Spock" do
        allow(Kernel).to receive(:rand).and_return 4
        expect(turn.result("lizard", nil)).to eq [:lizard, :spock]
      end
    end
  end
end
