require_relative './feistel_swapper.rb'

class FeistelDecryptor < FeistelSwapper
  def initialize(params)
    @bits_to_decrypt = params[:bits]
  end

  def decrypt
    # 1st swap
    first_result = FeistelSwapper.new({bits: @bits_to_decrypt, key: ENV.fetch('KEY') }).swap
    # 2nd swap
    # final_result = FeistelSwapper.new({bits: first_result, key: ENV.fetch('KEY') }).swap
  end
end