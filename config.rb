#SNAP QR Settings

#Use .png or .jpeg
IMAGE_TYPE = 'png'

#QR Dimensions in px
QR_H = 150
QR_W = 150

#QR Size (should not need to change this!)
QR_SIZE = 14

DIR = File.expand_path(File.dirname(__FILE__))

module SupportMethods
  def generate_qr_code (input)
    generate = RQRCode::QRCode.new(input, :size => QR_SIZE, :level => :h)
    png = generate.to_img
    file = png.resize(QR_H, QR_W).save("#{SAVE_DIR}/#{input}.#{IMAGE_TYPE}")
    path = File.expand_path(File.dirname(file))
    puts "QR for input: #{input} generated to path: #{path}"
  end
end
