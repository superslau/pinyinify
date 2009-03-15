pinyinify
    by Simon Lau
    http://github.com/superslau/pinyinify/tree/master

== DESCRIPTION:

Transliterate from Mandarin to Pinyin

== FEATURES/PROBLEMS:

Pinyinify::Transliterator converts mandarin characters into PinYin. It comes with a database of 25479 Chinese characters.

TODO: Make it not dependant on ActiveSupport (or make it >Ruby 1.9.1 only)

== SYNOPSIS:

  t = Pinyinify::Transliterator.new
  
  t.transliterate("最長的電影") 
  
  should hopefully result in
    
    "zui chang de dian ying"
  
== REQUIREMENTS:

ActiveSupport

== INSTALL:

sudo gem install superslau-pinyinify --sources=http://gems.github.com

== LICENSE:

(The MIT License)

Copyright (c) 2008 Simon Lau (different license?)

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
