#!/usr/bin/env ruby

require 'json'

imgdir = ARGV[0] || '.'
str = Dir.glob(File.join(imgdir, '*.{jpg,JPG,gif,GIF,png,PNG}')).sort.to_json
p str
File.open('images.js', 'w') {|f| f.write("var images=#{str};") }
