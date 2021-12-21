# frozen_string_literal: true
require "open-uri"
require "nokogiri"
require_relative "Test/version"

module Test
  class Error < StandardError; end
  # Your code goes here...
  #puts "Hello World"
  #URI.open("https://docs.cloudera.com") do |f|
   # puts f.read
 # end
  doc = Nokogiri::HTML(open("https://docs.cloudera.com"))
  #p doc
  title = doc.xpath('//title').text
  puts title
end


