require 'dotenv/load'
require_relative 'lib/feistel_decryptor.rb'
require_relative 'lib/feistel_encryptor.rb'



class Run
  def greeting
    puts("Welcome to the Feistel Decoder")
    puts("For each possible bits combination we will run a two step Feistel Cypher")
  end

  def show_info
    puts("The Key used is #{key}")
  end

  def key
    ENV.fetch('KEY', nil)
  end

  def set_of_bits
    [ "00000000","00010000","00100000","01110000",
      "00000001","00010001","00100001","01110001",
      "00000010","00010010","00100010","01110010",
      "00000011","00010011","00100011","01110011",
      "00000100","00010100","00100100","01110100",
      "00000101","00010101","00100101","01110101",
      "00000110","00010110","00100110","01110110",
      "00000111","00010111","00100111","01110111",
      "00001000","00011000","00101000","01111000",
      "00001001","00011001","00101001","01111001",
      "00001010","00011010","00101010","01111010",
      "00001011","00011011","00101011","01111011",
      "00001100","00011100","00101100","01111100",
      "00001101","00011101","00101101","01111101",
      "00001110","00011110","00101110","01111110",
      "00001111","00011111","00101111","01111111",
      "10000000","10010000","10100000","11110000",
      "10000001","10010001","10100001","11110001",
      "10000010","10010010","10100010","11110010",
      "10000011","10010011","10100011","11110011",
      "10000100","10010100","10100100","11110100",
      "10000101","10010101","10100101","11110101",
      "10000110","10010110","10100110","11110110",
      "10000111","10010111","10100111","11110111",
      "10001000","10011000","10101000","11111000",
      "10001001","10011001","10101001","11111001",
      "10001010","10011010","10101010","11111010",
      "10001011","10011011","10101011","11111011",
      "10001100","10011100","10101100","11111100",
      "10001101","10011101","10101101","11111101",
      "10001110","10011110","10101110","11111110",
      "10001111","10011111","10101111","11111111"]
  end
end

@run = Run.new

@run.greeting
@run.show_info
@run.set_of_bits.each do |bits|
  encrypted = FeistelEncryptor.new({bits: bits}).encrypt
  decrypted = FeistelDecryptor.new({bits: encrypted}).decrypt
  puts("------------------")
  puts("For bits combination #{bits}, using key #{@run.key}")
  puts("Encrypted: #{encrypted} | Decrypted: #{decrypted}")
end
