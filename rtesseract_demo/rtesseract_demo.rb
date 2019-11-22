require "rtesseract"

scanning = RTesseract.new("ocr_test.png")
text = scanning.to_s

text.split("\n").each do |line|
  p line
end
