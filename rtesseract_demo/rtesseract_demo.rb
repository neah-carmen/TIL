require "rtesseract"

scanning = RTesseract.new("ocr_test.png")
scanning.to_s

puts scanning
