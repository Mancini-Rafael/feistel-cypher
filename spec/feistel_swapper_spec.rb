require 'spec_helper'
require_relative '../lib/feistel_swapper.rb'

describe FeistelSwapper do
  context "When provided with a key" do
    it "#swap" do
      bits_to_encrypt = "01100111"
      key = "0101"
      expect(
        FeistelSwapper.new({ bits: bits_to_encrypt,
                             key: key }).swap
      ).to eq("01110100")
    end
  end
  context "When it doesn't have a key" do
    it "#swap should raise an error" do
      bits_to_encrypt = "01100111"
      expect {
        FeistelSwapper.new({ bits: bits_to_encrypt,
                             key: nil }).swap
      }.to raise_error("Key must be present")
    end
  end
  context "When it doesn't have bits to encrypt" do
    it "#swap should raise an error" do
      expect {
        FeistelSwapper.new({ bits: nil,
                             key: "1111" }).swap
      }.to raise_error("Bits to encrypt must be present")
    end
  end
end