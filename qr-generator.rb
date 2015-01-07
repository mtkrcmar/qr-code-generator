gem 'rqrcode_png'
require 'rubygems'
require 'rqrcode'
require 'rqrcode_png'
require 'tk'
require_relative 'config.rb'

include SupportMethods

puts 'Snap QR-Code Generator'
puts 'Running tool with the following settings:'
puts "Image encoding: #{IMAGE_TYPE}"
puts "QR Dimensions : #{QR_H} x #{QR_W}"
puts "QR Size: #{QR_SIZE}"
puts 'Please select input.txt file'
INPUT_FILE = Tk.getOpenFile
puts 'Please select output path:'
SAVE_DIR = Tk.chooseDirectory
puts "Output path set to: #{SAVE_DIR}"
puts 'Please select input.txt file'

File.readlines(INPUT_FILE).each do |line|
  input = line.chomp
  generate_qr_code(input)
end

puts "automatically closing in 10 seconds..."
sleep(10)
