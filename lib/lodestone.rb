#!/usr/bin/env ruby

$LOAD_PATH.unshift File.join(File.dirname(__FILE__), 'grammars')

require "treetop"
require "polyglot"
require "lodestone"
require "fileutils"

module Lodestone
  @ls = LodestoneParser.new

  def self.__parse definition
    opts = Hash.new
    @ls.parse( definition.to_s ).content.each do |thing|
      next if thing.nil?
      opts.merge!( thing[0].to_sym => thing[1] )
    end
    opts
  end

  def self.apply definition
    definition_hash = self.__parse definition
    path  = definition_hash[:path]  or return false, "No file or dir specified"
    user  = definition_hash[:user]  or nil
    group = definition_hash[:group] or nil
    perms = definition_hash[:perms] or nil

    unless File.exists? path
      return false, "#{path} does not exist"
    end
    
    begin
      FileUtils.chown user, group, path
      if perms
        FileUtils.chmod perms.to_i(8), path
      end
    rescue Exception => e
      return false, "Failed to set the perms on #{path} - #{e}"
    end

    return true, "Succesfully applied definition to #{path}"

  end
end
