# using OCR
to use OCR in Ruby:  

```bash  
brew install tesseract  
gem install rtesseract  
```

this will install [Tesseract](https://github.com/tesseract-ocr) and the [Ruby gem](https://rubygems.org/gems/rtesseract) that works with it  

now to test if it all works:  

```ruby  
require 'rtesseract'  

scanning = RTesseract.new("ocr_test.png")  
scanning.to_s  

puts scanning  
```

the output in the terminal is:  
```bash
This is a lot of 12 point text to test the  
ocr code and see if it works on all types  
of file format.  

The quick brown dog jumped over the  
lazy fox. The quick brown dog jumped  
over the lazy fox. The quick brown dog  
jumped over the lazy fox. The quick  
brown dog jumped over the lazy fox.  
```
