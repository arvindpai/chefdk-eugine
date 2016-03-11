# encoding: UTF-8

module ChefDK
  module Eugine
    def self.path
      File.expand_path(File.join(File.dirname(__FILE__), *%w(.. ..)))
    end
  end
end
