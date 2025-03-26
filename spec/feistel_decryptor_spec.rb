# frozen_string_literal: true

require 'spec_helper'
require_relative '../lib/feistel_decryptor'
require_relative '../lib/feistel_encryptor'

describe FeistelDecryptor do
  context 'When receives bits to decrypt' do
    it '#decrypts the message correctly times' do
      bits = '01100111'
      encrypted = FeistelEncryptor.new({ bits: bits }).encrypt
      decrypted = FeistelDecryptor.new({ bits: encrypted }).decrypt
      expect(decrypted).to eq(bits)
    end
  end
end
