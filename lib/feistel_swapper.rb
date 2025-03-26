# frozen_string_literal: true

class FeistelSwapper
  # Applies a FeistelSwap
  def initialize(params)
    @key =  if params[:key].nil?
              raise 'Key must be present'
            else
              params[:key].split('').map(&:to_i)
            end

    @bits = if params[:bits].nil?
              raise 'Bits to encrypt must be present'
            else
              params[:bits].split('').map(&:to_i)
            end
  end

  def swap
    split_bits
    crypted_portion = run_function
    join_bits(crypted_portion)
  end

  def split_bits
    @left = @bits[0..(@bits.length / 2 - 1)]
    @right = @bits[(@bits.length / 2)..@bits.length]
  end

  def run_function
    @key.zip(@right).map { |kd, rd| kd ^ rd }
  end

  def join_bits(crypted_portion)
    new_right = []
    @left.zip(crypted_portion).each do |l, r|
      new_right << (l ^ r)
    end

    (@right + new_right).join('')
  end
end
