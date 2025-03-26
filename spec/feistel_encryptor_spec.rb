# frozen_string_literal: true

require 'spec_helper'
require_relative '../lib/feistel_encryptor'

describe FeistelEncryptor do
  context 'When receives bits to encrypt' do
    it '#encrypts the message two times' do
      expect(FeistelEncryptor.new({ bits: '01100111' }).encrypt).to eq('01000110')
    end
  end
end
