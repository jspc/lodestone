#!/usr/bin/env ruby

$LOAD_PATH.unshift File.join(File.dirname(__FILE__), 'grammars')

require "treetop"
require "polyglot"
require "lodestone"
require "fileutils"

module Lodestone
  @ls = LodestoneParser.new
  @opts = Hash.new

  def self.__parse definition
    @ls.parse( definition.to_s ).content.each do |thing|
      next if thing.nil?
      @opts.merge!( thing[0].to_sym => thing[1] )
    end
    @opts
  end

  def self.apply definition
    definition_hash = self.__parse definition

    unless File.exists? definition_hash[:path]
      return false, "#{definition_hash[:path]} does not exist"
    end
    
    begin
      FileUtils.chown definition_hash[:user], definition_hash[:group], definition_hash[:path]
      FileUtils.chmod definition_hash[:perms].to_i(8), definition_hash[:path]
    rescue Exception => e
      return false, "Failed to set the perms on #{definition_hash[:path]} - #{e}"
    end

    return true, "Succesfully applied definition to #{definition_hash[:path]}"

  end
end
