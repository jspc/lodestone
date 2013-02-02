#!/usr/bin/env ruby
#

$LOAD_PATH.unshift File.join(File.dirname(__FILE__), '..', 'lib')

require 'lodestone'
require 'optparse'
require 'pathname'

opt_path = "/etc/lodestone.conf"
verbose  = false

OptionParser.new do |opts|
  opts.banner = "Usage: lodestone [options]"

  opts.on("-c", "--config [CONFIG FILE]", "Path to config file") { |c| opt_path = c }
  opts.on("-v", "--verbose", "See extra debug") { |v| verbose = true }
end.parse!

if not File.exists? opt_path
  raise "#{opt_path} :: No such file"
end

IO.readlines( opt_path ).each do |definition|
  res = Lodestone.apply definition.strip
  puts res[1] unless res[0]
  puts res[1] if res[0] and verbose
end
