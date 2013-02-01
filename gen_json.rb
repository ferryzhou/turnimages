#!/usr/bin/env ruby

require 'json'

imgdir = ARGV[0] || '.'
str = Dir.glob(File.join(imgdir, '*.jpg')).to_json
p str
File.open('images2.json', 'w') {|f| f.write(str) }
