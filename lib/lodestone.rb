#!/usr/bin/env ruby

$LOAD_PATH.unshift File.join(File.dirname(__FILE__), 'grammars')

require "treetop"
require "polyglot"
require "lodestone"

module Lodestone
  @ls = LodestoneParser.new
  @opts = Hash.new

  def self.__parse definition
    #"define directory /sss with perms 777 it should be user jcondron and should be group systems"
    @ls.parse( definition.to_s ).content.each do |thing|
      next if thing.nil?
      @opts.merge!( thing[0].to_sym => thing[1] )
    end
    @opts
  end

  def self.apply definition
    definition_hash = self.__parse definition

    puts "chown #{definition_hash[:user]} #{definition_hash[:path]}"
    puts "chgrp #{definition_hash[:group]} #{definition_hash[:path]}"
    puts "chmod #{definition_hash[:perms]} #{definition_hash[:path]}"
  end
end
