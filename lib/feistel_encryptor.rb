require_relative './feistel_swapper.rb'

class FeistelEncryptor < FeistelSwapper
  def initialize(params)
    @bits_to_encrypt = params[:bits]
  end

  def encrypt
    # 1st swap
    first_result = FeistelSwapper.new({bits: @bits_to_encrypt, key: ENV.fetch('KEY') }).swap
    # 2nd swap
    final_result = FeistelSwapper.new({bits: first_result, key: ENV.fetch('KEY') }).swap
  end
end