require "spec_helper"

RSpec.describe Cangjie do
  it "has a version number" do
    expect(Cangjie::VERSION).to eq "1.0.0"
  end

  let(:chinese) { "讓我們再一次把紅寶石變得更美好" }
  let(:english) { "Let's make Ruby great again" }
  let(:chi_eng) { "唐納·川普 Donald John Trump" }

  describe "#has_chinese?" do
    def result(text)
      Cangjie.has_chinese? text
    end

    it "returns true if has chinese; false otherwise" do
      aggregate_failures do
        expect(result(chinese)).to be true
        expect(result(english)).to be false
        expect(result(chi_eng)).to be true
      end
    end
  end

  describe "#all_chinese?" do
    def result(text)
      Cangjie.all_chinese? text
    end

    it "returns true if all chinese; false otherwise" do
      aggregate_failures do
        expect(result(chinese)).to be true
        expect(result(english)).to be false
        expect(result(chi_eng)).to be false
      end
    end
  end
end
